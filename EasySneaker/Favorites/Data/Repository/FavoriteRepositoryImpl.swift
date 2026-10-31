//
//  FavoriteRepositoryImpl.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 31/10/26.
//

class FavoriteRepositoryImpl: FavoriteRepository {
    
    private let dao: FavoriteDao = FavoriteDao.shared
    
    static let shared = FavoriteRepositoryImpl()
    
    private init() {}
    
    func getFavorites() throws -> Set<Int> {
        let favorites = try dao.getFavorites()
        
        return Set(favorites.map { entity in
            entity.id
        })
    }
    
    func addFavorite(id: Int) throws {
        try dao.addFavorite(id: id)
    }
    
    func removeFavorite(id: Int) throws {
        try dao.removeFavorite(id: id)
    }
    
}
