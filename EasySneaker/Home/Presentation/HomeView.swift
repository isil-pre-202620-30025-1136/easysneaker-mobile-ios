//
//  HomeView.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 26/09/26.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var viewModel: HomeViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ]) {
                ForEach(viewModel.products) { product in
                    ProductCard(
                        product: product,
                        isFavorite: viewModel.isFavorite(id: product.id)) {
                            viewModel.toggleFavorite(id: product.id)
                        }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
        .task {
            await viewModel.loadProducts()
        }
    }
}


#Preview {
    HomeView()
        .environmentObject(HomeViewModel())
}
