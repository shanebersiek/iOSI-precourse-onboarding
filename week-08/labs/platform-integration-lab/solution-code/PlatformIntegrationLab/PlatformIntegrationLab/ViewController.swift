//
//  ViewController.swift
//  PlatformIntegrationLab
//
//  Created by Ezekiel Abuhoff on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var clockLabel: UILabel!
    @IBOutlet weak var goalEntryField: UITextField!
    
    // MARK: Text Field
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let defaults = UserDefaults(suiteName: "group.PlatformIntegrationLab") {
            defaults.set(goalEntryField.text, forKey: "goalMessage")
            defaults.synchronize()
        }
        
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: Time
    
    func updateTime() {
        let currentTime = Date(timeIntervalSinceNow: 0)
        let formatter = DateFormatter()
        formatter.timeStyle = DateFormatter.Style.short
        clockLabel.text = formatter.string(from: currentTime)
    }

    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        goalEntryField.delegate = self
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

