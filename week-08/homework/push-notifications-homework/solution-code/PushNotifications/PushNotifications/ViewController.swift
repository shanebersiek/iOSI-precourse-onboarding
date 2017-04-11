//
//  ViewController.swift
//  PushNotifications
//
//  Created by Rudd Taylor on 8/28/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var timeIntervalField: UITextField!

    @IBAction func didTapSchedule(_ sender: AnyObject) {
        guard let secondsString = self.timeIntervalField?.text, let secondsValue = Double(secondsString), let textValue = self.textField?.text else { return }
        NotificationScheduler.scheduleNotificationForNumberOfSeconds(secondsValue, text: textValue)
    }
}

