//
//  FavoriteDao.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 31/10/26.
//

import SwiftData
import Foundation

class FavoriteDao {
    private var context: ModelContext
    
    static let shared = FavoriteDao()
    
    private init() {
        context = PersistenceContainer.shared.container.mainContext
    }
    
    func getFavorites() throws -> [FavoriteEntity] {
        let descriptor = FetchDescriptor<FavoriteEntity>()
        
        return try context.fetch(descriptor)
        
    }
    
    func addFavorite(id: Int) throws {
        let entity = FavoriteEntity(id: id)
        
        context.insert(entity)
        
        try context.save()
    }
    
    func removeFavorite(id: Int) throws {
        let predicate = #Predicate<FavoriteEntity> { entity in
            entity.id == id
        }
        let descriptor = FetchDescriptor<FavoriteEntity>(predicate: predicate)
        
        let favorites = try context.fetch(descriptor)
        
        for favorite in favorites {
            context.delete(favorite)
        }
        
        try context.save()
        
    }
    
}

