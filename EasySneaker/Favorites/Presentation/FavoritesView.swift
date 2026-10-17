//
//  FavoritesView.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 17/10/26.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject private var viewModel: HomeViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.favoriteProducts) { product in
                    FavoriteProductCard(product: product)
                        .swipeActions (edge: .trailing) {
                            Button(role: .destructive) {
                                viewModel.toggleFavorite(id: product.id)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                }
            }
        }
        
    }
}
