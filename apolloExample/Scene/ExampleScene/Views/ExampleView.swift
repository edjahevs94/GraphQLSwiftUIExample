//
//  ExampleView.swift
//  apolloExample
//
//  Created by Edgard Vargas on 17/04/23.
//

import SwiftUI

struct ExampleView: View {
    @StateObject var vm: ExampleViewModel = ExampleViewModel()
    var body: some View {
        List(vm.institutions) { institution in
            HStack {
                Text("\(institution.id)")
                Text(institution.name)
            }
            
            
        }
       
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
