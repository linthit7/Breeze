//
//  AppColors.swift
//  Breeze
//
//  Created by Lin Thit Khant on 9/29/23.
//

import Foundation
import UIKit

struct AppColors {
    
    static let primaryColor400 = UIColor.dynamicColor(light: UIColor(hex: "33A3F3"), dark: UIColor(hex: "4BAEF4"))
    static let primaryColor500 = UIColor.dynamicColor(light: UIColor(hex: "008CF0"), dark: UIColor(hex: "0B99FF"))
    static let primaryColor600 = UIColor.dynamicColor(light: UIColor(hex: "0070C0"), dark: UIColor(hex: "007FDA"))
    
    static let primaryColor = UIColor.dynamicColor(light: UIColor(hex: "008CF0"), dark: UIColor(hex: "0B99FF"))
    static let secondaryColor = UIColor.dynamicColor(light: UIColor(hex: "383B53"), dark: UIColor(hex: "383B53"))
    static let accentColor1 = UIColor.dynamicColor(light: UIColor(hex: "E4A226"), dark: UIColor(hex: "E7AB3D"))
    static let accentColor2 = UIColor.dynamicColor(light: UIColor(hex: "64CAC6"), dark: UIColor(hex: "77D0CE"))
    
    static let primaryFillColor = UIColor.dynamicColor(light: UIColor(hex: "738B91", alpha: 0.2), dark: UIColor(hex: "738B91", alpha: 0.2))
    static let secondaryFillColor = UIColor.dynamicColor(light: UIColor(hex: "738B91", alpha: 0.16), dark: UIColor(hex: "738B91", alpha: 0.16))
    static let tertiaryFillColor = UIColor.dynamicColor(light: UIColor(hex: "738B91", alpha: 0.12), dark: UIColor(hex: "738B91", alpha: 0.12))
    
    static let primaryLabelColor = UIColor.dynamicColor(light: UIColor(hex: "000000", alpha: 0.88), dark: UIColor(hex: "FFFFFF", alpha: 0.88))
    static let secodaryLabelColor = UIColor.dynamicColor(light: UIColor(hex: "3C3C43", alpha: 0.7), dark: UIColor(hex: "3C3C43", alpha: 0.7))
    static let tertiaryLabelColor = UIColor.dynamicColor(light: UIColor(hex: "949494", alpha: 0.5), dark: UIColor(hex: "949494", alpha: 0.5))
    
    static let separatorColor = UIColor.dynamicColor(light: UIColor(hex: "C6C6C9", alpha: 0.5), dark: UIColor(hex: "C6C6C9", alpha: 0.5))
    static let opaqueSeparatorColor = UIColor.dynamicColor(light: UIColor(hex: "C6C6C9", alpha: 1), dark: UIColor(hex: "C6C6C9", alpha: 1))
    
    static let successColor = UIColor.dynamicColor(light: UIColor(hex: "52C41A"), dark: UIColor(hex: "5CDB1D"))
    static let warningColor = UIColor.dynamicColor(light: UIColor(hex: "FAAD14"), dark: UIColor(hex: "FBB62D"))
    static let errorColor = UIColor.dynamicColor(light: UIColor(hex: "FF4D4F"), dark: UIColor(hex: "FF6769"))
    
    static let primaryBackgroundColor = UIColor.dynamicColor(light: UIColor(hex: "FFFFFF"), dark: UIColor(hex: "0D0D0D"))
    static let secondaryBackgroundColor = UIColor.dynamicColor(light: UIColor(hex: "E1E1E1"), dark: UIColor(hex: "2B2B2B"))
    static let tertiaryBackgroundColor = UIColor.dynamicColor(light: UIColor(hex: "C4C4C4"), dark: UIColor(hex: "C4C4C4"))
}
