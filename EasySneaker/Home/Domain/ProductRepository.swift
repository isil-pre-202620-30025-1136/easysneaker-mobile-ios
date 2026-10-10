//
//  ProductRepository.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 10/10/26.
//

protocol ProductRepository {
    
    func getProducts() async throws -> [Product]
}
