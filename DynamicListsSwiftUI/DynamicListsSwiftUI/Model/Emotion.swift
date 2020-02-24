//
//  Emotion.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/20/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import Foundation
import SwiftUI

struct Emotion: Identifiable {
    var id = UUID()
    var name: String
}

extension Emotion {
    static func Data() -> [Emotion] {
        let items = ["Calm", "Excited", "Brave", "Confident", "Loving", "Proud", "Happy", "Successful", "Creative", "Surprised", "Bored", "Angry", "Lonely", "Depressed", "Tired", "Scared", "Nervous", "Rejected", "Hurt", "Bullied", "Helpless"]
        
        var array = [Emotion]()
        
        for item in items {
            let emotion = Emotion(name: item)
            array.append(emotion)
        }
        
        return array
    }
}
