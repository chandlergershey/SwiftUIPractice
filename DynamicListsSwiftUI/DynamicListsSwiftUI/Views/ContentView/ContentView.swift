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
    
    @State private var loggedIn: Bool = false
    @State private var selection: Int? = nil
    @State private var permissionsEnabled: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                // AudioRecorder2View(audioRecorder: AudioRecorder())
                NavigationLink(destination: TabBarUpdatedView().navigationBarHidden(true), tag: 1, selection: self.$selection){
                    Text("")
                }
                Button(action: {
                    self.selection = 1
                }) {
                    Text("Sign In").fontWeight(.bold).font(.title).padding().background(Color.white).cornerRadius(40).foregroundColor(.purple).padding(3).overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.purple, lineWidth: 5))
                }.accessibility(identifier: "goToSelectMood")
//                HStack {
//                    Text("Give permission?")
//                    Toggle(isOn: self.$permissionsEnabled) {
//                        Text("")
//                        }.labelsHidden().accessibility(identifier: "permissionsEnabledToggle")
//                    Text(self.permissionsEnabled ? "ON" : "OFF").accessibility(identifier: "permissionsEnabledText")
//                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
