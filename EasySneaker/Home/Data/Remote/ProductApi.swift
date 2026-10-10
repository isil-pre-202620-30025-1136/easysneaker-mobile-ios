//
//  ProductApi.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 10/10/26.
//

import Foundation

class ProductApi {
    
    private let session = URLSession.shared
    
    static let shared = ProductApi()
    
    private init(){}
    
    func getProducts() async throws -> [ProductDto] {
        
        let urlString = "https://sneakerapi-y3ub.onrender.com/api/products"
        
        guard let url = URL(string: urlString) else {
            throw NetWorkError.invalidUrl
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let (data, response) = try await session.data(for: urlRequest)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetWorkError.invalidResponse
        }
        do {
            let productsDto = try JSONDecoder().decode(ProductsDto.self, from: data)
            return productsDto.products
        } catch {
            throw NetWorkError.decodingError
        }
            
    }
}

enum NetWorkError: Error {
    case invalidUrl
    case invalidResponse
    case decodingError
}
