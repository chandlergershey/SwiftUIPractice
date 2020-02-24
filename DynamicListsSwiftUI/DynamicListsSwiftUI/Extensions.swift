//
//  Extensions.swift
//  DynamicListsSwiftUI
//
//  Created by Chandler Gerstenslager on 2/23/20.
//  Copyright © 2020 MVT. All rights reserved.
//

import Foundation

extension Date{
    func toString( dateFormat format : String ) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    
}
