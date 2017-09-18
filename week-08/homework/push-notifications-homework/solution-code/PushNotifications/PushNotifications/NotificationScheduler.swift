//
//  NotificationScheduler.swift
//  PushNotifications
//
//  Created by Rudd Taylor on 8/28/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

let NotificationDidRegisterNotification = "NotificationDidRegisterNotification"

class NotificationScheduler {
    fileprivate static func registerNewNotificationForNumberOfSeconds(_ seconds: TimeInterval, text: String) {
        let localNotification = UILocalNotification()
        localNotification.fireDate = Date(timeIntervalSinceNow: seconds)
        localNotification.alertBody = text
        localNotification.timeZone = TimeZone.current
        localNotification.applicationIconBadgeNumber = 1
        localNotification.userInfo = ["text": text, "seconds": "\(seconds)"]
        UIApplication.shared.scheduleLocalNotification(localNotification)
    }
    
    static func scheduleNotificationForNumberOfSeconds(_ seconds: TimeInterval, text: String) {
        if let types = UIApplication.shared.currentUserNotificationSettings?.types.rawValue , types & UIUserNotificationType.alert.rawValue == UIUserNotificationType.alert.rawValue {
            NotificationScheduler.registerNewNotificationForNumberOfSeconds(seconds, text: text)
        } else {
            UIApplication.shared.registerUserNotificationSettings(UIUserNotificationSettings(types: .alert, categories: nil))
            NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: NotificationDidRegisterNotification), object:nil, queue:nil) { note in
                NotificationScheduler.registerNewNotificationForNumberOfSeconds(seconds, text: text)
            }
        }
    }
}
