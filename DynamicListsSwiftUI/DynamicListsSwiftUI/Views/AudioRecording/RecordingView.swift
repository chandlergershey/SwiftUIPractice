//
//  AudioRecorder2View.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/23/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI



struct RecordingView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    @State private var animateAquaColor = false
    @State private var animateSkyColor = false
    
    var body: some View {
        NavigationView{
            VStack{
                RecordingListViewComponent(audioRecorder: audioRecorder)
                if audioRecorder.recording == false {
                    Button(action: {self.audioRecorder.startRecording()}) {
                        Image(systemName: "circle.fill").resizable().aspectRatio(contentMode: .fill).frame(width: 100, height: 100).clipped().foregroundColor(.red).padding(.bottom, 40)
                    }
                } else {
                    Button(action: {self.audioRecorder.stopRecording()}) {
//                        Image(systemName: "stop.fill").resizable().aspectRatio(contentMode: .fill).frame(width: 100, height: 100).clipped().foregroundColor(.red).padding(.bottom, 40)
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
                }.navigationBarTitle("Voice recorder").navigationBarItems(trailing: EditButton())
        }
    }
}

struct AudioRecorder2View_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView(audioRecorder: AudioRecorder())
        // may need to "do the scenedelegate.swift stuff"
    }
}
