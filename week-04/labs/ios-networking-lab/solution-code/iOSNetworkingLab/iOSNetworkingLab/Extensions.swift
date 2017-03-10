//
//  Extensions.swift
//  iOSNetworkingLab
//
//  Created by Wellington Moreno on 7/11/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {
    
    func showNetworkIndicator() {
        
        let app = UIApplication.shared()
        app.isNetworkActivityIndicatorVisible = true
    }
    
    func hideNetworkIndicator() {
        
        let app = UIApplication.shared()
        app.isNetworkActivityIndicatorVisible = false
    }
}

extension String {
    
    var urlEncoded: String? {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
    }
}
