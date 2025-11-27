//
//  TopMovingItemView.swift
//  Crypto Currency app
//
//  Created by Lokesh on 01/11/25.
//

import SwiftUI
import Kingfisher

struct TopMovingItemView: View {
    let coin : Coin
    var body: some View {
        VStack(alignment: .leading){
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
                .padding(.bottom, 8)
            
            
            HStack(spacing: 4){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Text(coin.priceChangePercentage24H?.toPercentString() ?? "0.00%")
                .font(.title3)
                .foregroundStyle(coin.priceChangePercentage24H ?? 0.0 > 0 ? .green : .red)
        }
        .frame(width: 140 ,height: 140)
        .background(Color("topMoverBackgroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4) , lineWidth: 1.5)
        )
        
    }
}
//
//#Preview {
//    TopMovingItemView()
//}

