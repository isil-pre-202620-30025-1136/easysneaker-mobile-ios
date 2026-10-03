//
//  MainView.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 19/09/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            
            Tab("Cart", systemImage: "cart") {
                Text("Cart")
            }
            
            Tab("Wishlist", systemImage: "heart") {
                Text("Wishlist")
            }
            
            Tab("Profile", systemImage: "person") {
                Text("Profile")
            }
        }
        .tint(.yellow)
        .background(Color(red: 255/255, green: 253/255, blue: 252/255))

    }
}


#Preview {
    MainView()
}
