//
//  TabBarUpdatedView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/29/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct TabBarUpdatedView: View {
    @ObservedObject var viewRouter = ViewRouter()
    @State var singleIsPresented = false
    var rkManager1 = RKManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0)
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                
                Spacer()
                
                if self.viewRouter.currentView == "calendar" {
                    RKViewController(isPresented: self.$singleIsPresented, rkManager: self.rkManager1)
                } else if self.viewRouter.currentView == "bandage" {
                    Text("Bandage")
                }
                else if self.viewRouter.currentView == "mood"{
                    BeginMoodSelectionView()
                }
                else if self.viewRouter.currentView == "trends" {
                    CalendarListView()
                } else if self.viewRouter.currentView == "profile" {
                    SettingsView()
                }
                
                Spacer()
                
                HStack{
                    
                    // Calendar Tab
                    Image(systemName: "calendar").resizable().aspectRatio(contentMode: .fit).padding(20).frame(width: geometry.size.width/5, height: 75).foregroundColor(self.viewRouter.currentView == "calendar" ? .blue : .black).onTapGesture {
                        self.viewRouter.currentView = "calendar"
                    }
                    
                    // Help Tab
                    Image(systemName: "bandage").resizable().aspectRatio(contentMode: .fit).padding(20).frame(width: geometry.size.width/5, height: 75).foregroundColor(self.viewRouter.currentView == "bandage" ? .blue : .black).onTapGesture {
                        self.viewRouter.currentView = "bandage"
                    }
                    
                    // Add Mood Tab
                    
                    
/*
                    ZStack {
                    Circle().foregroundColor(Color.white).frame(width: 60, height: 60)
                        Image(systemName: "plus.circle.fill").resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60).foregroundColor(.blue).onTapGesture {
                            self.viewRouter.currentView = "mood"
                        }
                    }.offset(y: -geometry.size.height/10/2)
*/
                    
                    
                    

                    Button(action: { self.singleIsPresented.toggle() }) {
                        Image(systemName: "plus.circle.fill").padding().background(Color.blue).clipShape(Circle()).font(.largeTitle).foregroundColor(.white)
                    }.sheet(isPresented: self.$singleIsPresented){
                        BeginMoodSelectionView()
                    }
 
                    
                    
                    
                    
/*
                     
                     
                     Button(action: { self.singleIsPresented.toggle() }) {
                         Text("Example 1 - Single Date Selection").foregroundColor(.blue)
                     }
                     .sheet(isPresented: self.$singleIsPresented, content: {
                         RKViewController(isPresented: self.$singleIsPresented, rkManager: self.rkManager1)})
*/
                    
                    
                    
                    
                    // Trends Tab
                    Image(systemName: "circle.grid.hex").resizable().aspectRatio(contentMode: .fit).padding(20).frame(width: geometry.size.width/5, height: 75).foregroundColor(self.viewRouter.currentView == "trends" ? .blue : .black).onTapGesture {
                        self.viewRouter.currentView = "trends"
                    }
                    
                    // Profile Tab
                    Image(systemName: "gear").resizable().aspectRatio(contentMode: .fit).padding(20).frame(width: geometry.size.width/5, height: 75).foregroundColor(self.viewRouter.currentView == "profile" ? .blue : .black).onTapGesture {
                        self.viewRouter.currentView = "profile"
                    }
                    
                }.frame(width: geometry.size.width, height: geometry.size.height/10).background(Color.white.shadow(radius: CGFloat(2.0))).padding(.bottom, 15)
                }.edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct TabBarUpdatedView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarUpdatedView()
    }
}
