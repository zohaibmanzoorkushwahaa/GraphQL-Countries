//
//  CountriesListViewModel.swift
//  GraphQLCountry
//
//  Created by Zohaib Manzoor on 01/01/2025.
//

import Foundation
import SwiftUI
import Apollo
import CountryApi

class CountriesListViewModel: ObservableObject {
    
    @Published var countries: [GetAllCountriesQuery.Data.Country]?
    @Published var searchedCountries: [GetAllCountriesQuery.Data.Country]?
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var searchQuery: String = ""
    
    func fetchCountries() {
        isLoading = true
        errorMessage = nil
        Network.shared.apollo.fetch(query: GetAllCountriesQuery()) { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let graphQLResult):
                    if let countries = graphQLResult.data?.countries {
                        self?.countries = countries
                        self?.searchedCountries = countries
                    } else if let errors = graphQLResult.errors {
                        self?.errorMessage = errors.map { $0.localizedDescription }.joined(separator: "\n")
                    }
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
    
    func filterCountries() {
        guard !searchQuery.isEmpty else {
            searchedCountries = countries
            return
        }
        
        withAnimation {
            searchedCountries = countries?.filter({ country in
                country.name.lowercased().contains(searchQuery.lowercased())
            })
        }
    }
}
