//
//  TodayViewController.swift
//  PlatformIntegrationLabWidget
//
//  Created by Ezekiel Abuhoff on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    // MARK: Properties
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // MARK: Life Cycle
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        
        if let defaults = UserDefaults(suiteName: "group.PlatformIntegrationLab") {
            if let storedMessage = defaults.string(forKey: "goalMessage") {
                messageLabel.text = storedMessage
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.newData)
    }
    
}
