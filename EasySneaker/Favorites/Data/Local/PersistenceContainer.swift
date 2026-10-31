//
//  PersistenceContainer.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 31/10/26.
//

import SwiftData

class PersistenceContainer {
    let container: ModelContainer
    
    static let shared = PersistenceContainer()
    
    private init() {
        
        do {
            let config = ModelConfiguration()
            container = try ModelContainer(for: FavoriteEntity.self, configurations: config)
        }
        catch {
            fatalError("Failed to configure SwiftData container")
        }
        
    }
}
