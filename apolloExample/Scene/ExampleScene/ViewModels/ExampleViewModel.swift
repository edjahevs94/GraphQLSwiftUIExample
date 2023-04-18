//
//  ExampleViewModel.swift
//  apolloExample
//
//  Created by Edgard Vargas on 17/04/23.
//

import Foundation
import ExampleSchema

class ExampleViewModel: ObservableObject {
    
    @Published var institutionName: String = " "
    @Published var institutions: [Institution] = []
    
    init() {
        getInstitutions()
    }
    
    func getInstitutions() {
        Network.shared.apollo.fetch(query: GetQuery()) {
            result in
            switch result {
            case .success(let graphQLResponse):
                print(graphQLResponse)
                self.institutionName = graphQLResponse.data?.getAllInstitutions?[1]?.name ?? "no name"
                guard let institutionsArray = graphQLResponse.data?.getAllInstitutions else {
                    return
                }
                for institution in institutionsArray {
                    var item = Institution(id: institution?.id ?? 0, name: institution?.name ?? " ")
                    self.institutions.append(item)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
}
