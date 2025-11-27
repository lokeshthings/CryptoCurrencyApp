//
//  HomeView.swift
//  Crypto Currency app
//
//  Created by Lokesh on 31/10/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators : false) {
                TopMovingView(viewModel: viewModel)
                
                Divider()
                
                AllCoinView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
      
}
 
