//
//  GivePermissionsView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/6/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct GivePermissionsView: View {
    
    @State private var permissionsEnabled: Bool = false
    
    var body: some View {
        HStack {
            Text("Give permission?")
            Toggle(isOn: self.$permissionsEnabled) {
                Text("")
                }.labelsHidden().accessibility(identifier: "permissionsEnabledToggle")
            Text("OFF").accessibility(identifier: "permissionsEnabledText")
        }
        
    }
}

struct GivePermissionsView_Previews: PreviewProvider {
    static var previews: some View {
        GivePermissionsView()
    }
}
