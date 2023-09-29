//
//  UIColor+Extensions.swift
//  Breeze
//
//  Created by Lin Thit Khant on 9/29/23.
//

import Foundation
import UIKit

extension UIColor {

    /// Initialize UIColor using hex string and an optional alpha value
    /// - Parameters:
    ///   - hex: A hex string, must be formatted as 'RRGGBB'
    ///   - alpha: A decimal number between 0.0 and 1.0 representing the alpha channel (opacity). Default is 1.0.
    convenience init?(hex: String, alpha: CGFloat = 1.0) {
        guard hex.count == 6 else { return nil }
        
        let red = CGFloat(strtoul(String(hex.prefix(2)), nil, 16)) / 255.0
        let green = CGFloat(strtoul(String(hex.dropFirst(2).prefix(2)), nil, 16)) / 255.0
        let blue = CGFloat(strtoul(String(hex.dropFirst(4).prefix(2)), nil, 16)) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

