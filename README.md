📱 Crypto Tracker App (SwiftUI)

A lightweight iOS application built with SwiftUI and MVVM, providing real-time cryptocurrency market data.
The app displays top movers, live prices, charts, and detailed coin insights using clean, reusable UI components.

⸻

✨ Features
	•	📈 Live cryptocurrency market data fetched from the CoinGecko API
	•	🚀 Top Movers section based on 24h percentage change
	•	🧩 Modular & reusable SwiftUI components
	•	🖼️ Remote image loading & caching powered by Kingfisher
	•	🧠 MVVM architecture for maintainability & scalability
	•	🔄 Smooth updates using @Published and ObservableObject
	•	🌙 Beautiful, modern UI designed for performance

⸻

🏗️ Architecture

The app uses a clean MVVM architecture, structured for scalability:

Model
	•	Defines the Coin structure
	•	Uses Codable for JSON decoding

ViewModel
	•	Fetches data from CoinGecko API
	•	Handles sorting (Top Movers, Market Cap, etc.)
	•	Updates view state reactively

Views
	•	SwiftUI interfaces like:
	•	HomeView
	•	TopMovingView
	•	CoinRowView
	•	DetailView

⸻

📁 Project Structure
Crypto Tracker App
├── App/
├── Core/
│   └── Home/
│       └── Views/
├── HomeViewModel/
├── Model/
├── Utils/
└── Extensions/

🌐 API Integration

The application integrates with the CoinGecko REST API to retrieve:
	•	Live coin prices
	•	Market cap data
	•	24h price movement
	•	Market rank
	•	High-quality coin images

Networking
	•	Implemented using URLSession
	•	Responses decoded using JSONDecoder
	•	Lightweight and fast architecture

⸻

🛠️ Tech Stack
	•	Swift
	•	SwiftUI
	•	MVVM
	•	URLSession
	•	JSONDecoder
	•	Kingfisher
	•	Xcode
