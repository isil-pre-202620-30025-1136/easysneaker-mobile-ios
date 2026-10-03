//
//  HomeView.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 26/09/26.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ]) {
                ForEach(viewModel.products) { product in
                    ProductCard(product: product)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}


#Preview {
    HomeView()
}
