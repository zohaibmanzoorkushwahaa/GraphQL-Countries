//
//  CountryView.swift
//  GraphQLCountry
//
//  Created by Zohaib Manzoor on 01/01/2025.
//

import SwiftUI
import CountryApi

struct CountryView: View {
    
    var country: GetAllCountriesQuery.Data.Country
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            Text("The \(country.name), with the country code \(country.code), is a nation located in \(country.continent.name). Its capital city is \(country.capital ?? ""), and the official currency is the \(country.currencies.first ?? ""). The country is known natively as \(country.native), and \(country.languages.first?.name ?? "") is the primary language spoken. The \(country.name) falls within the AWS \(country.awsRegion) and uses the international phone code \(country.phone). Represented by the flag \(country.emoji).")
            .padding(.horizontal)
        }
        .navigationTitle("\(country.emoji) \(country.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    CountryView()
//}
