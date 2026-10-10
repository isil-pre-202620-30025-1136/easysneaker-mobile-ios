//
//  ProductDto.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 10/10/26.
//

struct ProductDto: Decodable {
    let id: Int
    let name: String
    let brand: String
    let price: Double
    let rating: Double
    let image: String
}
