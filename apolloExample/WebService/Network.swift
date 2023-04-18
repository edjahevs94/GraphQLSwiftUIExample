//
//  ApolloClient.swift
//  apolloExample
//
//  Created by Edgard Vargas on 17/04/23.
//

import Foundation
import Apollo

class Network {
    
    static let shared = Network()
    
    let url = "http://gamitbackend-env.eba-ame5hp4c.us-east-2.elasticbeanstalk.com/graphql"

    private(set) lazy var apollo = ApolloClient(url: URL(string: url)!)
    
}
