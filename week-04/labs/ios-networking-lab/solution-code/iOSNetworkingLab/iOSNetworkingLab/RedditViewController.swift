//
//  RedditAPIViewController.swift
//  iOSNetworkingLab
//
//  Created by Wellington Moreno on 7/11/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class RedditViewController : UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    private let redditUrl = "https://www.reddit.com/.json"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearText()
        reload()
    }
    
    private func clearText() {
        self.textView?.text = nil
    }
    
    private func reload() {
        
        guard let url = URL(string: redditUrl)
        else { return }
        
        let session = URLSession.shared
        
        func onComplete(data: Data?, response: URLResponse?, error: NSError?) {
            
            defer {
                self.hideNetworkIndicator()
            }
            
            guard let data = data else { return }
            
            let string = String(data: data, encoding: String.Encoding.utf8)
            
            OperationQueue.main.addOperation() {
                self.textView?.text = string
            }
        }
        
        let task = session.dataTask(with: url, completionHandler: onComplete)
        
        //Show the Network indicator
        showNetworkIndicator()
        task.resume()
        
    }
    
    @IBAction func onGo(_ sender: AnyObject) {
        self.reload()
    }
    
    
}
