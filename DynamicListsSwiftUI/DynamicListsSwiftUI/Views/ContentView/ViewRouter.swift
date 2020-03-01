//
//  ViewRouter.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/29/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ViewRouter: ObservableObject {
    @Published var currentView = "home"
}
