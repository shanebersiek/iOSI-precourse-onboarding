//
//  Fonts.swift
//  UnitTesting1Lab
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit


class Fonts {
    
    static var ubuntuFont: UIFont? {
        return UIFont(name: "Ubuntu", size: 12)
    }
    
    static func ubuntu(withSize size: Int) -> UIFont? {
        return UIFont(name: "Ubuntu", size: CGFloat(size))
    }
}
