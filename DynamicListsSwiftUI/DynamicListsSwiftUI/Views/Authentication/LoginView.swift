//
//  LoginView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/29/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    
    func signIn(){
        
    }
    
    var body: some View {
        VStack{
            Text("Mood Tracker").font(.system(size: 32, weight: .heavy))
            Text("Sign in to continue").font(.system(size: 18, weight: .medium)).foregroundColor(.gray)
            
            VStack(spacing: 18){
                TextField("Email address", text: $email).font(.system(size: 14)).padding(12).background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                
                SecureField("Password", text: $password).font(.system(size: 14)).padding(12).background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
            }.padding(.vertical, 64)
            
            Button(action: signIn) {
                Text("Sign In").frame(minWidth: 0, maxWidth: .infinity).frame(height: 50).foregroundColor(.white).font(.system(size: 14, weight: .bold)).background(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing)).cornerRadius(15)
            }
            
            if(error != ""){
                Text(error).font(.system(size: 14, weight: .semibold)).foregroundColor(.red).padding()
            }
            
        }.padding(.horizontal, 32)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
