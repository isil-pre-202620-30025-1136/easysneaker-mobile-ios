//
//  HomeViewModel.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 3/10/26.
//

import Combine

class HomeViewModel: ObservableObject {
    
    @Published private(set) var products:[Product] = []
    let repository = ProductRepositoryImpl.shared
    
    
    func loadProducts() async {
        
        do {
            let products = try await repository.getProducts()
        } catch {
            
        }
    }
}
