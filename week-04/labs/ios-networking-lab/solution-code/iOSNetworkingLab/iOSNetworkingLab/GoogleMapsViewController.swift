//
//  GoogleMapsAPIViewController.swift
//  iOSNetworkingLab
//
//  Created by Wellington Moreno on 7/11/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class GoogleMapsViewController : UIViewController {
    
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    private let baseUrl = "https://maps.googleapis.com/maps/api/geocode/json?address="
    
    private let sampleAddress = "Santa Monica, CA 90401"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearText()
    }
    
    private func clearText() {
        self.addressTextField.text = nil
        self.textView.text = nil
    }
    
    @IBAction func onSearch(_ sender: AnyObject) {
        
        var address = addressTextField.text ?? ""
        address = address.isEmpty ? sampleAddress : address
        
        guard let encodedAddress = address.urlEncoded else { return }
        
        let link = baseUrl + encodedAddress + "&sensor=false"
        guard let url = URL(string: link) else { return }
        print("Querying: \(url)")
        
        func onComplete(data: Data?, response: URLResponse?, error: NSError?) {
            defer {
                self.hideNetworkIndicator()
            }
            
            if let error = error {
                print("Error retrieving Adress: \(address) : \(error)")
            }
            
            guard let data = data, string = String(data: data, encoding: String.Encoding.utf8)
                else {
                    return
            }
            
            print(string)
            
            OperationQueue.main.addOperation() {
                self.textView?.text = string
            }
        }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url, completionHandler: onComplete)
        showNetworkIndicator()
        task.resume()
        
    }
}
