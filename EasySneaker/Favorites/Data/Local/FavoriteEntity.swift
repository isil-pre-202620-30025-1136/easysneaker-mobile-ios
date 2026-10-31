//
//  FavoriteEntity.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 31/10/26.
//


import SwiftData

@Model
class FavoriteEntity {
    
    @Attribute(.unique)
    var id: Int
    
    init (id: Int) {
        self.id = id
    }
}
