//
//  ViewController.swift
//  PublicationPreparationLab
//
//  Created by Ezekiel Abuhoff on 7/20/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    
    // MARK: Actions
    
    @IBAction func topButtonPressed(_ sender: AnyObject) {
        topButton.isHidden = true
        bottomButton.isHidden = false
    }
    @IBAction func bottomButtonPressed(_ sender: AnyObject) {
        topButton.isHidden = false
        bottomButton.isHidden = true
    }
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

