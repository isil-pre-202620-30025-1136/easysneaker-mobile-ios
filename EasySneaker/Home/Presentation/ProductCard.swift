//
//  ProductCard.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 26/09/26.
//

import SwiftUI

struct ProductCard: View {
    let product: Product
    let isFavorite: Bool
    let onToggleFavorite: () -> Void
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            VStack (alignment: .leading){
                AsyncImage(url: URL(string: product.image)) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                    case .failure(_):
                        Image(systemName: "photo")
                    @unknown default:
                        EmptyView()
                    }
                }
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: 160)
                
                Text(product.brand).bold().font(.title2)
                Text(product.name)
                Text(product.price.formatted()).bold()
                
            }
            Button {
                onToggleFavorite()
            } label: {
                Image(systemName: isFavorite ? "heart.fill" : "heart" )
            }
            
        }
        
        .padding()
        .background(.gray.opacity(0.10))
        .cornerRadius(16)
        
    }
}

#Preview {
    ProductCard(
        product: Product(
            id: 1,
            name: "Nike Air Motion",
            price: 122.64,
            brand: "Nike",
            image: "https://i.imgur.com/E8ZBAnC.png"
        ),
        isFavorite: false
    ) {}
}
