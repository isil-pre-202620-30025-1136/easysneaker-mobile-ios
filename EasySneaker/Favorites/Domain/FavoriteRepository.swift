//
//  FavoriteRepository.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 31/10/26.
//

protocol FavoriteRepository {
    func getFavorites() throws -> Set<Int>
    func addFavorite(id: Int) throws
    func removeFavorite(id: Int) throws
    
}
