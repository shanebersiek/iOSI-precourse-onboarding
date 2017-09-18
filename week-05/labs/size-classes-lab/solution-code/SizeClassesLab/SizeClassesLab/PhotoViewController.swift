//
//  PhotoViewController.swift
//  SizeClassesLab
//
//  Created by Wellington Moreno on 7/15/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class PhotoViewController : UIViewController {
    
    @IBOutlet weak var photoViewController: UIImageView!
    
    var photo: UIImage! {
        didSet {
            self.photoViewController?.image = photo
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoViewController?.image = photo
    }
}
