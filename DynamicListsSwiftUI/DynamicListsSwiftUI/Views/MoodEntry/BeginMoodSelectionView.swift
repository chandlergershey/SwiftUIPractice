//
//  BeginMoodSelectionMood.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/29/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct BeginMoodSelectionView: View {
    var body: some View {
        
        NavigationView {
            NavigationLink(destination: SelectMoodView().navigationBarTitle("").navigationBarHidden(true)){
                BeginMoodLogButton()
            }
        }
        
    }
}

struct BeginMoodSelectionMood_Previews: PreviewProvider {
    static var previews: some View {
        BeginMoodSelectionView()
    }
}

struct BeginMoodLogButton: View {
    var body: some View {
        Text("Enter your mood").bold().foregroundColor(.white).padding().frame(width: 220, height: 60).background(Color.blue).cornerRadius(15.0).padding(.top, 20)
    }
}
