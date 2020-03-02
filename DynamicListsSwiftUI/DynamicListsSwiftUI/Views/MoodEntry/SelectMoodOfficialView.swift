//
//  SelectMoodOfficialView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/20/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct Mood {
    let mood, icon: String
}

struct SelectMoodOfficialView: View {
    
    var moodSelection: [Mood] = [
        Mood(mood: "Awesome", icon: "awesome_mood_icon"),
        Mood(mood: "Good", icon: "good_mood_icon"),
        Mood(mood: "Okay", icon: "okay_mood_icon"),
        Mood(mood: "Bad", icon: "bad_mood_icon"),
        Mood(mood: "Awful", icon: "awful_mood_icon")
    ]
    var body: some View {
            VStack{
                ForEach(moodSelection, id: \.mood){
                    mood in HStack{
                        NavigationLink(destination: SelectEmotionView()){
                            // .navigationBarTitle("x").navigationBarHidden(true)
                            VStack {
                            Image(mood.icon).renderingMode(.original).resizable().frame(width: 70, height: 70)
                                Text(mood.mood)
                                    .fontWeight(.bold)
                            }
                            }
                    }
                }
            }
    }
}

struct SelectMoodOfficialView_Previews: PreviewProvider {
    static var previews: some View {
        SelectMoodOfficialView()
    }
}
