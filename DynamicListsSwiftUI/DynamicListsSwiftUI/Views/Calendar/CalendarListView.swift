//
//  CalendarListView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 3/1/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct CalendarListView: View {
    
    @State var pickerSelectedItem = 0
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Mood View").font(.system(size: 34)).fontWeight(.heavy)
                Picker(selection: $pickerSelectedItem, label: Text("")){
                    Text("Past 7 Days").tag(0)
                    Text("Past 14 Days").tag(1)
                }.pickerStyle(SegmentedPickerStyle()).padding(.horizontal, 24)
                
                HStack (spacing: 16) {
                    BarView(value: 50, iconName: "awesome_mood_icon", barColor: Color(#colorLiteral(red: 0.6109118462, green: 0.8651826978, blue: 0.2021178007, alpha: 1)))
                    BarView(value: 100, iconName: "good_mood_icon", barColor: Color(#colorLiteral(red: 0, green: 0.8488311768, blue: 0.7249178886, alpha: 1)))
                    BarView(value: 150, iconName: "okay_mood_icon", barColor: Color(#colorLiteral(red: 0.3445448875, green: 0.7081360221, blue: 0.8963118792, alpha: 1)))
                    BarView(value: 150, iconName: "bad_mood_icon", barColor: Color(#colorLiteral(red: 0.9309601784, green: 0.4937891364, blue: 0.641892612, alpha: 1)))
                    BarView(value: 150, iconName: "awful_mood_icon", barColor: Color(#colorLiteral(red: 0.6428464055, green: 0.4646516442, blue: 0.6883072853, alpha: 1)))
                    
                }.padding(.top, 15)
            }
            
        }
        
        
    }
}

struct BarView: View {
    
    var value: CGFloat = 0
    var iconName: String = ""
    var barColor: Color = Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Capsule().frame(width: 30, height: 200).foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                Capsule().frame(width: 30, height: value).foregroundColor(barColor)
                
            }.padding(.top, 24)
            Image(iconName).resizable().scaledToFit().frame(width: 40, height: 40).padding(.top, 25)
        }
    }
}

struct CalendarListView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarListView()
    }
}
