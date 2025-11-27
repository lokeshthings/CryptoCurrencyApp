//
//  AllCoinView.swift
//  Crypto Currency app
//
//  Created by Lokesh on 01/11/25.
//

import SwiftUI

struct AllCoinView: View {
    @ObservedObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            HStack{
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .font(.caption)
            .foregroundStyle(.gray)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        
        }
    }
}

#Preview {
    AllCoinView(viewModel: HomeViewModel())
}
