//
//  OnBoardingView.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 12/09/26.
//

import SwiftUI

struct OnBoardingView: View {
    let onNext: () -> Void
    
    var body: some View {
        VStack(spacing: 8) {
            Image("background")
                .resizable()
                .scaledToFit()

            Spacer()

            Text("Boost Your Style\nSense").font(.largeTitle).multilineTextAlignment(.center)
                .bold()
            
            Text("Discover, shop and unlock new styles\nfor your sneaker collection.")
                .multilineTextAlignment(.center)
            
            Spacer()

            Button {
                onNext()
            } label: {
                Image(systemName: "arrow.forward")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .tint(.black)
            }
            .padding()
            .background(.yellow)
            .clipShape(Circle())
            
            Spacer()
        }
        .background(Color(red: 255/255, green: 253/255, blue: 252/255))
        .ignoresSafeArea()
    }
}

#Preview {
    OnBoardingView {}
}
