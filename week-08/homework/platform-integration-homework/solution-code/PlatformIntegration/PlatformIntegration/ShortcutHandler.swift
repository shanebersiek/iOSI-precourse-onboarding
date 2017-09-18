//
//  ShortcutHandler.swift
//  PlatformIntegration
//
//  Created by Rudd Taylor on 9/6/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
class ShortcutHandler: NSObject {
    
    static let sharedInstance = ShortcutHandler()
    
    override init() {
        super.init()
    }
    
    func handleShortcut(_ shortcut: UIApplicationShortcutItem) -> Bool {
        guard let top = UIApplication.shared.keyWindow?.rootViewController else { return false }
        top.dismiss(animated: false, completion: nil)
        switch shortcut.type {
        case "View":
            guard let topSplit = top as? UISplitViewController,  let topNav = topSplit.viewControllers.first as? UINavigationController, let top = topNav.viewControllers.first as? MasterViewController else { return false }
            top.tableView.selectRow(at: IndexPath(item: 0, section: 0), animated: false, scrollPosition: .none)
            top.performSegue(withIdentifier: "showDetail", sender: nil)
            return true
        default:
            return false
        }
    }
}
