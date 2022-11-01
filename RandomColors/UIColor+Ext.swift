//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Klim Krivoguzov on 01.11.2022.
//

import UIKit

extension UIColor{
    static func random() ->UIColor{
        let randomColor  = UIColor.init(red: CGFloat.random(in: 0.1...1),
                                        green: CGFloat.random(in: 0.1...1),
                                        blue: CGFloat.random(in: 0.1...1),
                                        alpha: 1)
        return randomColor
    }
}
