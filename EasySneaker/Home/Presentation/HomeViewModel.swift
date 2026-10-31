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
    
    let repository: ProductRepository = ProductRepositoryImpl.shared
    let favoriteRepository: FavoriteRepository = FavoriteRepositoryImpl.shared
    
    var favoriteProducts: [Product] {
        products.filter { product in
            isFavorite(id: product.id)
        }
    }
    
    func toggleFavorite(id: Int) {
        if isFavorite(id: id) {
           try? favoriteRepository.removeFavorite(id: id)
        } else {
           try? favoriteRepository.addFavorite(id: id)
        }
        
        do {
            favoriteIds = try favoriteRepository.getFavorites()
        } catch {
            
        }
    }
    
    func isFavorite(id: Int) -> Bool {
        return favoriteIds.contains(id)
    }
    
    
    
    
    func loadProducts() async {
        
        do {
            products = try await repository.getProducts()
            favoriteIds = try favoriteRepository.getFavorites()
        } catch {
            
        }
    }
}
