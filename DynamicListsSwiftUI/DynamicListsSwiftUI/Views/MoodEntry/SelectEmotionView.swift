//
//  SelectEmotionView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/20/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct MultiSelectRow : View {
    
    var emotion: Emotion
    
    @Binding var selectedItems : Set<UUID>
    
    var isSelected: Bool {
        selectedItems.contains(emotion.id)
    }
    
    var body: some View {
        
        HStack{
            Text(self.emotion.name).font(.title).fontWeight(.bold)
            Spacer()
            if self.isSelected {
                Image(systemName: "checkmark").foregroundColor(Color.blue)
            }
        }.onTapGesture {
            if self.isSelected {
                self.selectedItems.remove(self.emotion.id)
            } else {
                self.selectedItems.insert(self.emotion.id)
            }
        }
    }
}

struct SelectEmotionView: View {
    var emotions = Emotion.Data()
    
    @State var selectedRows = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(emotions, selection: $selectedRows) { emotion in
                MultiSelectRow(emotion: emotion, selectedItems: self.$selectedRows)
            }.navigationBarTitle(
                //Text("\(selectedRows.count) Emotions Selected")
                Text("Select Emotions")
            )
        }
    }
}

struct SelectEmotionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectEmotionView()
    }
}
