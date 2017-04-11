//
//  ViewController.swift
//  CustomUIViewsLab
//
//  Created by Ezekiel Abuhoff on 7/18/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var entryField: UITextField!
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        entryField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Text Field
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Update bar chart with data from entered text
    }
}

