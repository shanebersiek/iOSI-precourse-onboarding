//
//  FlowerViewController.swift
//  DebuggingLab
//
//  Created by Wellington Moreno on 7/7/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class FlowerViewController : UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var flowerDescriptionTextField: UITextView!
    
    var flower: Flower!
    
    override func viewDidLoad() {
        
        setFlowerInfo()
    }
    
    private func dismiss() {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    private func setFlowerInfo() {
        
        if let image = flower.image {
            imageView.image = image
        }
        
        nameLabel.text = flower.name
        flowerDescriptionTextField.text = flower.description
    }
    
    
}
