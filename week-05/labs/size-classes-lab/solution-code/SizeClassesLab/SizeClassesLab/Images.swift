//
//  Images.swift
//  SizeClassesLab
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit


class Images {
    
    static let architecturePhotos = [
        #imageLiteral(resourceName: "Arc-1"),
        #imageLiteral(resourceName: "Arc-2"),
        #imageLiteral(resourceName: "Arc-3"),
        #imageLiteral(resourceName: "Arc-4"),
        #imageLiteral(resourceName: "Arc-5"),
        #imageLiteral(resourceName: "Arc-6"),
        #imageLiteral(resourceName: "Arc-7"),
        #imageLiteral(resourceName: "Arc-8"),
        #imageLiteral(resourceName: "Arc-9")
    ]
    
    static let artPhotos = [
        #imageLiteral(resourceName: "Painting-1"),
        #imageLiteral(resourceName: "Painting-2"),
        #imageLiteral(resourceName: "Painting-3"),
        #imageLiteral(resourceName: "Painting-4")
    ]
    
    static let photographyShots = [
        #imageLiteral(resourceName: "Shot-1"),
        #imageLiteral(resourceName: "Shot-2"),
        #imageLiteral(resourceName: "Shot-3"),
        #imageLiteral(resourceName: "Shot-4"),
        #imageLiteral(resourceName: "Shot-5")
    ]
    
    static var images: [UIImage] {
        return architecturePhotos + artPhotos + photographyShots
    }
}
