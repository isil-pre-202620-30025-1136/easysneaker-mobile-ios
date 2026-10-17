//
//  ProductRepositoryImpl.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 10/10/26.
//

class ProductRepositoryImpl: ProductRepository {
    private let api = ProductApi.shared
    
    static let shared = ProductRepositoryImpl()
    
    private init(){}
    
    func getProducts() async throws -> [Product] {
        let dtos = try await api.getProducts()
        return dtos.map { $0.toDomain() }
    }
}
