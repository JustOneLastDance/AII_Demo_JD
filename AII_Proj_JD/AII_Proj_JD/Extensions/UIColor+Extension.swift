//
//  UIColor+Extension.swift
//  AII_Proj_JD
//
//  Created by JustinChou on 2022/9/27.
//

import UIKit

extension UIColor {
    
    /// 利用十六进制创建 uicolor
    /// - Parameter hex: 十六进制数值
    convenience init(colorHex hex: Int) {
        self.init(red: CGFloat((hex >> 16) & 0xFF),
                  green: CGFloat((hex >> 8) & 0xFF),
                  blue: CGFloat(hex & 0xFF),
                  alpha: 1.0)
    }
}
