📱 Crypto Tracker App (SwiftUI)

Crypto Tracker is a lightweight iOS app built with Swift and SwiftUI, following the MVVM architecture for a clean, modular, and scalable codebase.

It provides real-time cryptocurrency market data, top movers, and a modern, easy-to-use interface.


⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

✨ Features

📊 Live cryptocurrency market data fetched from the CoinGecko API

🚀 “Top Movers” section ranked by 24h price change

🧩 Reusable and maintainable SwiftUI components

🖼️ Remote image loading and caching using Kingfisher

🧠 Clean MVVM architecture for separation of concerns

🔄 Smooth state updates using ObservableObject and @Published

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

🏗️ Architecture

Model: Defines the Coin data structure and uses Codable for JSON parsing

ViewModel: Handles API calls, sorting, filtering, and state management

Views: SwiftUI-based screens such as HomeView, TopMovingView, CoinRowView, and detail views

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

🛠️ Tech Stack

Language: Swift

Framework: SwiftUI

Architecture: MVVM

Networking: URLSession + JSONDecoder

Images: Kingfisher

API: CoinGecko REST API

IDE: Xcode

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

🚀 Getting Started

1. Clone the Repository

git clone https://github.com/lokeshthings/comfortkey.git
