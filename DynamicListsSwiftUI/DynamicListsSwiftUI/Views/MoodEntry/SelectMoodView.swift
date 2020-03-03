//
//  SelectMoodView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/5/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct SelectMoodView: View {
    
    @State private var selection: Int? = nil
    @State public var mood: String = ""
    var bob = "bobby"
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("How are you feeling?").font(.largeTitle)
                }
                HStack{
                    VStack {
                        NavigationLink(destination: RecordingView(audioRecorder: AudioRecorder()), tag: 4, selection: self.$selection){
                            Text("")
                        }
                        Button(action: {
                            self.selection = 4
                            self.mood = "Good"
                        }) {
                            Image("mood_good").renderingMode(.original).resizable().scaledToFit().frame(height: 100)
                        }
                    }
                    VStack {
                        NavigationLink(destination: RecordingView(audioRecorder: AudioRecorder()), tag: 5, selection: self.$selection){
                            Text("")
                        }
                        Button(action: {
                            self.selection = 5
                            self.mood = "Awesome"
                        }) {
                            Image("mood_awesome").renderingMode(.original).resizable().scaledToFit().frame(height: 100)
                        }
                    }
                }
                HStack{
                    VStack {
                        NavigationLink(destination: RecordingView(audioRecorder: AudioRecorder()), tag: 3, selection: self.$selection){
                            Text("")
                        }
                        Button(action: {
                            self.selection = 3
                            self.mood = "Okay"
                        }) {
                            Image("mood_okay").renderingMode(.original).resizable().scaledToFit().frame(height: 100)
                        }.accessibility(identifier: "okayButton")
                    }
                }
                HStack{
                    VStack {
                        NavigationLink(destination: RecordingView(audioRecorder: AudioRecorder()), tag: 2, selection: self.$selection){
                            Text("")
                        }
                        Button(action: {
                            self.selection = 2
                            self.mood = "Bad"
                        }) {
                            Image("mood_bad").renderingMode(.original).resizable().scaledToFit().frame(height: 100)
                        }
                    }
                    VStack {
                        NavigationLink(destination: RecordingView(audioRecorder: AudioRecorder()), tag: 1, selection: self.$selection){
                            Text("")
                        }
                        Button(action: {
                            self.selection = 1
                            self.mood = "Awful"
                        }) {
                            Image("mood_awful").renderingMode(.original).resizable().scaledToFit().frame(height: 100)
                        }
                    }
                }
                VStack {
                    Text("")
                }
            }
        }
    }
}

struct SelectMoodView_Previews: PreviewProvider {
    static var previews: some View {
        SelectMoodView()
    }
}
