//
//  DescribeMoodView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/5/20.
//  Copyright © 2020 MVT. All rights reserved.
//
// https://blckbirds.com/post/voice-recorder-app-in-swiftui-1/
// https://fuckingswiftui.com
// 

import SwiftUI

struct DescribeMoodView: View {
    @State private var animateAquaColor = false
    @State private var animateSkyColor = false
    var body: some View {
        ZStack{
            //Color(.black).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Tap to record").font(.title).fontWeight(.bold).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).multilineTextAlignment(.center).padding()
                Spacer()
                ZStack{
                    
                    Circle().frame(width: 300, height: 300).foregroundColor(Color(#colorLiteral(red: 1, green: 0.06869401783, blue: 0.1258047819, alpha: 1))).scaleEffect(animateSkyColor ? 1 : 1.1).animation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true).speed(1.1)).onAppear() {
                        self.animateSkyColor.toggle()
                    }
                    
                    Circle().frame(width: 200, height: 200).foregroundColor(Color(#colorLiteral(red: 1, green: 0.4613331556, blue: 0.5155193806, alpha: 1))).scaleEffect(animateSkyColor ? 1 : 1.1).animation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true).speed(1.1)).onAppear(){
                        self.animateAquaColor.toggle()
                    }
                    
                    Circle().frame(width: 100, height: 100).foregroundColor(Color(#colorLiteral(red: 0.7619953156, green: 0.06617131084, blue: 0.1049325988, alpha: 1)))
                    
                    Capsule().frame(width:30, height:50).foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    
                    Capsule().trim(from: 1/2, to: 1).stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round)).frame(width: 40, height: 50).foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).rotationEffect(.degrees(180)).offset(y: 4)
                    
                    Rectangle().foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).frame(width: 5, height: 20).offset(y: 40)
                }
            }
        }
    }
}

struct DescribeMoodView_Previews: PreviewProvider {
    static var previews: some View {
        DescribeMoodView()
    }
}
