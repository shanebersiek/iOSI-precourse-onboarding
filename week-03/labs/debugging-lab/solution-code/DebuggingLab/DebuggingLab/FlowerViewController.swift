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
    
    @IBOutlet weak var flowerImage: UIImageView!
    @IBOutlet weak var flowerNameLabel: UILabel!
    @IBOutlet weak var flowerDescriptionTextField: UITextView!
    
    var flower: Flower!
    
    override func viewDidLoad() {
        
        guard flower != nil else {
            self.dismiss()
            return
        }
        
        setFlowerInfo()
    }
    
    private func dismiss() {
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    private func setFlowerInfo() {
        
        if let image = flower.image {
            flowerImage.image = image
        }
        
        flowerNameLabel.text = flower.name
        flowerDescriptionTextField.text = flower.description
    }
    
    
}
