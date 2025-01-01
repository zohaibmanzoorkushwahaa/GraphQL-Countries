# GraphQL Countries App

A Swift-based iOS app that uses GraphQL to fetch and display a list of countries. The app is built with the Apollo framework and includes a search functionality to quickly find a specific country.

---

## Features

- **Fetch Countries:** Retrieves a list of countries from a GraphQL API.
- **Search Functionality:** Allows users to search for a specific country by name.
- **Optimized with Apollo:** Leveraging Apollo's GraphQL client for smooth integration and caching.
- **User-Friendly Interface:** Designed with a clean and responsive UI.

---

## Technologies Used

- **Language:** Swift
- **Framework:** Apollo
- **Architecture:** MVVM (Model-View-ViewModel)
- **Tools:** Xcode

---

## Getting Started

### Prerequisites

1. **Xcode**: Ensure you have the latest version installed.
2. **Apollo CLI**: Install the Apollo CLI to handle schema downloading and code generation.

   ```bash
   npm install -g apollo
   ```

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/<your-username>/graphql-countries-app.git
   ```

2. Navigate to the project directory:

   ```bash
   cd graphql-countries-app
   ```

3. Install dependencies:

   - Open the project in Xcode.
   - Ensure Apollo is set up as a Swift Package.

4. Run the Apollo CLI to download the schema and generate API code:

   ```bash
   apollo schema:download --endpoint=https://countries.trevorblades.com/
   apollo codegen:generate --target=swift --includes=**/*.graphql --localSchemaFile=schema.graphqls
   ```

5. Build and run the project in Xcode.

---

## Usage

1. Launch the app on your simulator or device.
2. View a list of countries fetched from the GraphQL API.
3. Use the search bar to find specific countries quickly.

---


## Contributing

Contributions are welcome! If you'd like to improve this project, feel free to submit a pull request.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Contact

For any questions or suggestions, feel free to reach out at [zohaibmanzoorkushwaha@gmail.com/contact info].

