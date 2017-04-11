//
//  File.swift
//  PlatformIntegration
//
//  Created by Rudd Taylor on 9/6/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

struct Picture {
    var image: UIImage
    var createdAt: Date
    
    init(image: UIImage) {
        self.image = image
        self.createdAt = Date()
    }
}
