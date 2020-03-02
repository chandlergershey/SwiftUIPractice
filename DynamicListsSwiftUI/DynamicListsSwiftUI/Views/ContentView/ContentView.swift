//
//  ContentView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 1/31/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI
/*
 Created by: Chandler Gerstenslager (02/05/2020)
 Description: Login view
 */
struct ContentView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var error: String = ""
    @State private var selection: Int? = nil
    
    func signIn(){
        
    }
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Mood Tracker").font(.system(size: 32, weight: .heavy))
                Text("Sign in to continue").font(.system(size: 18, weight: .medium)).foregroundColor(.gray)
                
                VStack(spacing: 18){
                    TextField("Email address", text: $email).font(.system(size: 14)).padding(12).background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                    
                    SecureField("Password", text: $password).font(.system(size: 14)).padding(12).background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                }.padding(.vertical, 64)
                
                NavigationLink(destination: TabBarUpdatedView().navigationBarTitle("").navigationBarHidden(true), tag: 1, selection: self.$selection){
                    Text("")
                }
                
                
                Button(action: {
                    self.selection = 1
                }) {
                    Text("Sign In").frame(minWidth: 0, maxWidth: .infinity).frame(height: 50).foregroundColor(.white).font(.system(size: 14, weight: .bold)).background(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .leading, endPoint: .trailing)).cornerRadius(15)
                }
            
                
                if(error != ""){
                    Text(error).font(.system(size: 14, weight: .semibold)).foregroundColor(.red).padding()
                }
                
            }.padding(.horizontal, 32)
        }.navigationBarTitle("").navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
