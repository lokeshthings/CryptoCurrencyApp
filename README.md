Crypto Tracker App (SwiftUI)

A lightweight iOS application built with SwiftUI and MVVM, providing real-time cryptocurrency market data. The app displays top movers, live prices, and detailed coin information using clean and reusable UI components.

Features
	•	Live cryptocurrency market data fetched from the CoinGecko API
	•	“Top Movers” section ranked by 24h price change
	•	Reusable, maintainable SwiftUI views
	•	Remote image loading and caching using Kingfisher
	•	MVVM architecture for clean separation of concerns

Architecture

The app is structured using an MVVM-style approach:
	•	Model – Defines the Coin data structure using Codable
	•	ViewModel – Handles API requests, JSON decoding, sorting, and state updates
	•	Views – SwiftUI-based UI components such as HomeView, TopMovingView, and CoinRowView
  
Crypto Currency App
├── App/                    
├── Core/Home/Views/       
├── HomeViewModel/         
├── Model/                 
├── Utils/                 
└── Extensions/ 

API Integration

The application uses the CoinGecko REST API to retrieve:
	•	Coin prices
	•	Market cap
	•	24h price movement
	•	Market rank
	•	Coin images

Networking is handled through URLSession, and responses are decoded using JSONDecoder.

Technologies Used
	•	SwiftUI
	•	MVVM
	•	URLSession
	•	JSONDecoder
	•	Kingfisher
	•	Xcode

