//
//  AudioRecorder2View.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/23/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI



struct AudioRecorder2View: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        NavigationView{
            VStack{
                RecordingsList(audioRecorder: audioRecorder)
                if audioRecorder.recording == false {
                    Button(action: {self.audioRecorder.startRecording()}) {
                        Image(systemName: "circle.fill").resizable().aspectRatio(contentMode: .fill).frame(width: 100, height: 100).clipped().foregroundColor(.red).padding(.bottom, 40)
                    }
                } else {
                    Button(action: {self.audioRecorder.stopRecording()}) {
                        Image(systemName: "stop.fill").resizable().aspectRatio(contentMode: .fill).frame(width: 100, height: 100).clipped().foregroundColor(.red).padding(.bottom, 40)
                    }
                }
                }.navigationBarTitle("Voice recorder").navigationBarItems(trailing: EditButton())
        }
    }
}

struct AudioRecorder2View_Previews: PreviewProvider {
    static var previews: some View {
        AudioRecorder2View(audioRecorder: AudioRecorder())
        // may need to "do the scenedelegate.swift stuff"
    }
}
