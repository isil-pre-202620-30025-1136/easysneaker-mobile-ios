//
//  ProductMapper.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 17/10/26.
//

extension ProductDto {
    func toDomain() -> Product {
        
        Product(id: id,
                name: name,
                price: price,
                brand: brand,
                image: image)
    }
}
