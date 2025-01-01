//
//  GraphQLCountryApp.swift
//  GraphQLCountry
//
//  Created by Zohaib Manzoor on 01/01/2025.
//

import SwiftUI

@main
struct GraphQLCountryApp: App {
    var body: some Scene {
        WindowGroup {
            CountriesListView(viewModel: .init())
        }
    }
}
