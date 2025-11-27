//
//  HomeViewModel.swift
//  Crypto Currency app
//
//  Created by Lokesh on 04/11/25.
//
import SwiftUI
import Combine

class HomeViewModel : ObservableObject {
    @Published var coins =  [Coin]()
    @Published var topMovingCoins  =  [Coin]()

  
    
    init(){
        fetchCoinData()
    }
    func fetchCoinData(){
       let urlString =
        "https:api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=1h"
        
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let error = error{
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            if let response = response as? HTTPURLResponse{
                print("DEBUG: Response code \(response.statusCode)")
            }
            guard let data = data else {return}
            
            do {
                let decodedCoins = try JSONDecoder().decode([Coin].self, from: data)
                DispatchQueue.main.async {
                    self.coins = decodedCoins
                    self.configureTopMovingCoins()
                }
            } catch let error {
                print("DEBUG: Failed to decode with error: \(error)")
            }
        }
        .resume()
    }
    func configureTopMovingCoins(){
        let topMovers = coins.sorted(by: {$0.priceChangePercentage24H ?? 0 > $1.priceChangePercentage24H ?? 0})
        self.topMovingCoins = Array(topMovers.prefix(5))
    }
}
