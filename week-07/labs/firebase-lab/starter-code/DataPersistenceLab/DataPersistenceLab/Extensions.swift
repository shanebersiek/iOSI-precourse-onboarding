//
//  Extensions.swift
//  DataPersistenceLab
//
//  Created by Wellington Moreno on 7/25/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation


extension Array {
    
    mutating func prepend(value: Element) {
        
        self.insert(value, at: 0)
    }
}
