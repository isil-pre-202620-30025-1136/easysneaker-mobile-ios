//
//  ProductDetailView.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 26/09/26.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    var body: some View {
        VStack {
            GeometryReader { geometry in
                HStack {
                    
                    VStack (alignment: .leading) {
                        Text(product.name)
                            .font(.largeTitle)
                            .bold()
                        
                        Text(product.description)
                    }
                    .frame(width: geometry.size.width / 2)
                    
                    VStack {
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
                    }
                    .frame(maxHeight: .infinity)
                    .background(.gray.opacity(0.2))
                    .frame(width: geometry.size.width / 2)

                }
                .frame(height: 360)
            }
            
        }
    }
}

#Preview {
    ProductDetailView(
        product: Product(
            id: 1,
            name: "Nike Air Motion",
            price: 122.64,
            brand: "Nike",
            image: "https://i.imgur.com/E8ZBAnC.png",
            description: "Modelo deportivo con tecnología Air para máxima amortiguación."
        )
    )
}
