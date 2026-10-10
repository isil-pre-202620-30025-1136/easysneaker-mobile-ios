//
//  ProductsDto.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 10/10/26.
//

struct ProductsDto: Decodable {
    let count: Int
    let products: [ProductDto]
    
    enum CodingKeys: String, CodingKey {
        case count
        case products = "results"
    }
}
