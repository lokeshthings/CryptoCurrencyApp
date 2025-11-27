//
//  TopMovingView.swift
//  Crypto Currency app
//
//  Created by Lokesh on 01/11/25.
//

import SwiftUI

struct TopMovingView: View {
    @StateObject var viewModel : HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack(spacing: 12){
                    ForEach (viewModel.topMovingCoins){ coin in
                        TopMovingItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TopMovingView(viewModel: HomeViewModel())
}
