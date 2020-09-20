//
//  Utilities.swift
//  airbnb
//
//  Created by Ramesh Sheran on 8/16/20.
//  Copyright © 2020 Ramesh Sheran. All rights reserved.
//

import Foundation
import UIKit

class Utilities {
    static func styleTextField(_ textfield:UITextField){
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x:0,y:textfield.frame.height - 2,width: textfield.frame.width,height:2)
        
        bottomLine.backgroundColor = UIColor.init(red:255/255,
            green:255/255,blue:255/255,alpha:1).cgColor
        
        textfield.borderStyle = .none
        
        textfield.layer.addSublayer(bottomLine)
    }
}

