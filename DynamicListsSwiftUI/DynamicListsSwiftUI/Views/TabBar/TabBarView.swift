//
//  TabBarView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/24/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            CalendarView().tabItem {
                VStack {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            }.tag(0)
            SelectEmotionView().tabItem {
                VStack {
                    Image(systemName: "bandage")
                    Text("Help")
                }
            }.tag(1)
            SelectMoodOfficialView().tabItem {
                VStack {
                    Image(systemName: "plus.circle")
                    Text("Add Mood")
                }
            }.tag(2)
            DescribeMoodView().tabItem {
                VStack {
                    Image(systemName: "circle.grid.hex")
                    Text("Trends")
                }
            }.tag(3)
            RecordingView(audioRecorder: AudioRecorder()).tabItem {
                VStack {
                    Image(systemName: "person")
                    Text("Profile")
                }
            }.tag(4)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView().navigationBarHidden(true)
    }
}

struct CalendarView: View {
    var body: some View {
        NavigationView {
            Text("Calendar View")
        }
    }
}


struct OfficialHelpView: View {
    var body: some View {
        NavigationView {
            Text("Help View")
        }
    }
}

//struct AddMoodView: View {
//    var body: some View {
//        NavigationView{
//            Text("Enter mood here")
//        }
//    }
//}

struct TrendsView: View {
    var body: some View {
        NavigationView {
            Text("Trends are here")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationView {
            Text("Profile Page and settings")
        }
    }
}
