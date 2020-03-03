//
//  SettingsView.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 3/1/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Reminders")
                Text("Change Theme")
                Text("Privacy and Permissions")
                Text("About Nationwide Children's Hospital")
                Text("How to use the app")
                Text("Sign out")
            }.navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
