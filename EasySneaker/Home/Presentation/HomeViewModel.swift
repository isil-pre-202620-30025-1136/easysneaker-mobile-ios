//
//  HomeViewModel.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 3/10/26.
//

import Combine

class HomeViewModel: ObservableObject {
    
    @Published private(set) var products:[Product] = []
    @Published private(set) var favoriteIds: Set<Int> = []
    
    var favoriteProducts: [Product] {
        products.filter { product in
            favoriteIds.contains(product.id)
        }
    }
    
    func toggleFavorite(id: Int) {
        if favoriteIds.contains(id) {
            favoriteIds.remove(id)
        } else {
            favoriteIds.insert(id)
        }
    }
    
    func isFavorite(id: Int) -> Bool {
        return favoriteIds.contains(id)
    }
    
    
    let repository = ProductRepositoryImpl.shared
    
    
    func loadProducts() async {
        
        do {
            products = try await repository.getProducts()
        } catch {
            
        }
    }
}
