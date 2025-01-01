//
//  Network.swift
//  GraphQLCountry
//
//  Created by Zohaib Manzoor on 01/01/2025.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private(set) lazy var apollo: ApolloClient = {
        let url = URL(string: "https://countries.trevorblades.com/")!
        return ApolloClient(url: url)
    }()
}
