//
//  CoinRowView.swift
//  Crypto Currency app
//
//  Created by Lokesh on 01/11/25.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    let coin : Coin
    var body: some View {
        
        HStack(spacing: 12){
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundStyle(.gray)
            
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundStyle(.orange)
            
            VStack(alignment: .leading, spacing: 4){
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 4)
            Spacer()
            
            VStack(alignment: .trailing){
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.priceChangePercentage24H?.toPercentString() ?? "0.00%")
                    .font(.caption)
                    .padding(.leading, 6)
                    .foregroundStyle(coin.priceChangePercentage24H ?? 0.0 > 0 ? .green : .red)

            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
        
    }
}
//
//#Preview {
//    CoinRowView()
//}
