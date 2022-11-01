//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Klim Krivoguzov on 01.11.2022.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .systemBackground
        self.title = TitleisColor()
        
    }
    
    
    func TitleisColor()-> String{
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        if ((view.backgroundColor?.getRed(&red, green: &green, blue: &blue, alpha: &alpha)) != nil) {
            let iRed = Int(red * 255.0)
            let iGreen = Int(green * 255.0)
            let iBlue = Int(blue * 255.0)
            return "RGB: (\(iRed),\(iGreen),\(iBlue))"
        }
        else { return "" }
    }
}
