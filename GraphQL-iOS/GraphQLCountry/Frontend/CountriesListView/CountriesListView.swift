//
//  CountriesListView.swift
//  GraphQLCountry
//
//  Created by Zohaib Manzoor on 01/01/2025.
//

import SwiftUI
import CountryApi

struct CountriesListView: View {
    
    @StateObject var viewModel: CountriesListViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                } else if let errorMessage = viewModel.errorMessage {
                    Text("Error: \(errorMessage)")
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                } else if let countries = viewModel.searchedCountries {
                    TextField("Search Country...", text: $viewModel.searchQuery)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                        .padding(.horizontal)
                    
                    List(countries, id: \.code) { country in
                        NavigationLink(destination: CountryView(country: country)) {
                            HStack {
                                Text(country.emoji)
                                Text(country.name)
                                Spacer()
                            }
                        }
                    }
                }
            }
            .onChange(of: viewModel.searchQuery, { oldValue, newValue in
                print("newValue \(newValue)")
                viewModel.filterCountries()
            })
            .task {
                viewModel.fetchCountries()
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CountriesListView(viewModel: .init())
}
