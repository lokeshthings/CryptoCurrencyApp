📱 Crypto Tracker App (SwiftUI)

A lightweight iOS application built with SwiftUI and MVVM, providing real-time cryptocurrency market data.
The app displays top movers, live prices, and detailed coin information using clean and reusable UI components.

⸻

✨ Features
	•	📊 Live cryptocurrency market data fetched from the CoinGecko API
	•	🚀 “Top Movers” section ranked by 24h price change
	•	🧩 Reusable and maintainable SwiftUI views
	•	🖼️ Remote image loading and caching using Kingfisher
	•	🧠 MVVM architecture for clean separation of concerns
	•	🔄 Smooth loading and state updates using ObservableObject

⸻

🏗️ Architecture Overview

The app follows a clean MVVM structure:

🟦 Model
	•	Defines the Coin data structure
	•	Uses Codable for JSON parsing

🟩 ViewModel
	•	Fetches cryptocurrency data from CoinGecko
	•	Sorts and filters top movers
	•	Publishes updates using @Published

🟧 Views
	•	HomeView
	•	TopMovingView
	•	CoinRowView
	•	Detail View

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



⸻

🌐 API Integration

The app integrates with the CoinGecko REST API to fetch:
	•	Current coin prices
	•	Market capitalization
	•	24h price movement
	•	Market rank
	•	Coin images

Networking is implemented using URLSession, and responses are decoded via JSONDecoder.

⸻

🛠️ Technologies Used
	•	🧪 Swift
	•	🎨 SwiftUI
	•	🧠 MVVM
	•	🌐 URLSession
	•	📦 JSONDecoder
	•	🖼️ Kingfisher
	•	🧰 Xcode
