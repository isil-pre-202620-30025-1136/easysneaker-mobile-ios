//
//  FavoriteProductCard.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 17/10/26.
//

import SwiftUI

struct FavoriteProductCard: View {
    let product: Product
    
    var body: some View {
        
        HStack {
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
            .frame(width: 96, height: 96)
            .padding(8)
            .background(.gray.opacity(0.10))
            .cornerRadius(16)
            
            VStack (alignment: .leading){
                Text(product.brand)
                Text(product.name).bold().font(.title2)
                Text(product.price.formatted()).bold()
            }
            Spacer()
        }
    }
}
