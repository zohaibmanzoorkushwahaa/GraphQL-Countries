// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetAllCountriesQuery: GraphQLQuery {
  public static let operationName: String = "GetAllCountries"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetAllCountries { countries { __typename name code capital currencies continent { __typename name } native states { __typename name code } languages { __typename name } awsRegion subdivisions { __typename name } phone emoji } }"#
    ))

  public init() {}

  public struct Data: CountryApi.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { CountryApi.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("countries", [Country].self),
    ] }

    public var countries: [Country] { __data["countries"] }

    /// Country
    ///
    /// Parent Type: `Country`
    public struct Country: CountryApi.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { CountryApi.Objects.Country }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String.self),
        .field("code", CountryApi.ID.self),
        .field("capital", String?.self),
        .field("currencies", [String].self),
        .field("continent", Continent.self),
        .field("native", String.self),
        .field("states", [State].self),
        .field("languages", [Language].self),
        .field("awsRegion", String.self),
        .field("subdivisions", [Subdivision].self),
        .field("phone", String.self),
        .field("emoji", String.self),
      ] }

      public var name: String { __data["name"] }
      public var code: CountryApi.ID { __data["code"] }
      public var capital: String? { __data["capital"] }
      public var currencies: [String] { __data["currencies"] }
      public var continent: Continent { __data["continent"] }
      public var native: String { __data["native"] }
      public var states: [State] { __data["states"] }
      public var languages: [Language] { __data["languages"] }
      public var awsRegion: String { __data["awsRegion"] }
      public var subdivisions: [Subdivision] { __data["subdivisions"] }
      public var phone: String { __data["phone"] }
      public var emoji: String { __data["emoji"] }

      /// Country.Continent
      ///
      /// Parent Type: `Continent`
      public struct Continent: CountryApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { CountryApi.Objects.Continent }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("name", String.self),
        ] }

        public var name: String { __data["name"] }
      }

      /// Country.State
      ///
      /// Parent Type: `State`
      public struct State: CountryApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { CountryApi.Objects.State }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("name", String.self),
          .field("code", String?.self),
        ] }

        public var name: String { __data["name"] }
        public var code: String? { __data["code"] }
      }

      /// Country.Language
      ///
      /// Parent Type: `Language`
      public struct Language: CountryApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { CountryApi.Objects.Language }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("name", String.self),
        ] }

        public var name: String { __data["name"] }
      }

      /// Country.Subdivision
      ///
      /// Parent Type: `Subdivision`
      public struct Subdivision: CountryApi.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: any ApolloAPI.ParentType { CountryApi.Objects.Subdivision }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("name", String.self),
        ] }

        public var name: String { __data["name"] }
      }
    }
  }
}
