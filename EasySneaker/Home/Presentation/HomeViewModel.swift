//
//  HomeViewModel.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 3/10/26.
//

import Combine

class HomeViewModel: ObservableObject {
    @Published private(set) var products:[Product] = []
    
    init() {
        Task {
            try await Task.sleep(for: .seconds(5))
            loadProducts()
        }
    }
    
    func loadProducts() {
        
        products = [
            Product(
                id: 1,
                name: "Nike Air Motion",
                price: 122.64,
                brand: "Nike",
                image: "https://i.imgur.com/E8ZBAnC.png",
                description: "Modelo deportivo con tecnología Air para máxima amortiguación."
            ),
            Product(
                id: 2,
                name: "ASICS Velocity Pro",
                price: 106.64,
                brand: "ASICS",
                image: "https://i.imgur.com/Uh1Jye7.png",
                description: "Zapatilla cómoda para entrenamiento diario con gran amortiguación."
            ),
            
            Product(
                id: 3,
                name: "Adidas RunBoost X",
                price: 93.31,
                brand: "Adidas",
                image: "https://i.imgur.com/1yfHnqw.png",
                description: "Zapatilla ligera y flexible ideal para entrenamiento urbano."
            ),
            Product(
                id: 4,
                name: "Adidas RunBoost X",
                price: 93.31,
                brand: "Adidas",
                image: "https://i.imgur.com/1yfHnqw.png",
                description: "Zapatilla ligera y flexible ideal para entrenamiento urbano."
            ),
            Product(
                id: 5,
                name: "Adidas RunBoost X",
                price: 93.31,
                brand: "Adidas",
                image: "https://i.imgur.com/1yfHnqw.png",
                description: "Zapatilla ligera y flexible ideal para entrenamiento urbano."
            ),
            Product(
                id: 6,
                name: "Adidas RunBoost X",
                price: 93.31,
                brand: "Adidas",
                image: "https://i.imgur.com/1yfHnqw.png",
                description: "Zapatilla ligera y flexible ideal para entrenamiento urbano."
            ),
            Product(
                id: 7,
                name: "Adidas RunBoost X",
                price: 93.31,
                brand: "Adidas",
                image: "https://i.imgur.com/1yfHnqw.png",
                description: "Zapatilla ligera y flexible ideal para entrenamiento urbano."
            )
        ]
    }
}
