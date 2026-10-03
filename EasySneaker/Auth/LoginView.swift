//
//  LoginView.swift
//  EasySneaker
//
//  Created by Jorge Mayta on 19/09/26.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @State var isHidden = true
    
    let onLogin: () -> Void
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            TextField("Email", text: $email)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .frame(height: 24)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            HStack {
                
                Group {
                    if isHidden {
                        SecureField("Password", text: $password)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                    } else {
                        TextField("Password", text: $password)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                    }
                }
                
                Button {
                    isHidden.toggle()
                } label: {
                    Image(systemName: isHidden ? "eye.slash" : "eye")
                        .tint(.black)
                }
                
            }
            .frame(height: 24)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.gray.opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            
            Button {
                onLogin()
            } label: {
                Text("Sign in")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black)
                    .background(.yellow)
            }
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            
        }
        .frame(
            maxWidth: .infinity, maxHeight: .infinity
        )
        .padding(.horizontal)
        .background(Color(red: 255/255, green: 253/255, blue: 252/255))
        
        
    }
}


#Preview {
    LoginView {}
}
