//
//  UIColor+Extension.swift
//  healthy
//
//  Created by Ricky Hung on 2023/4/30.
//

import UIKit

public extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
    
    convenience init(red: UInt, green: UInt, blue: UInt) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    static let detailBackgroundColor: UIColor = UIColor(rgb: 0x333B40)
    static let noButtonBackgroundColor: UIColor = UIColor(rgb: 0x414141)
    static let yesButtonBackgroundColor: UIColor = UIColor(rgb: 0x1E89D1)
}
