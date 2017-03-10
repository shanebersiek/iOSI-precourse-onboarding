//
//  GoogleBooksViewController.swift
//  iOSNetworkingLab
//
//  Created by Wellington Moreno on 7/11/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class GoogleBooksViewController : UIViewController {
    
    @IBOutlet weak var isbnTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    private let baseUrl = "https://www.googleapis.com/books/v1/volumes?q=isbn:"
    
    private let sampleISBN = "0747532699"
    private let otherBook = "9780834827905"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clearText()
    }
    
    private func clearText() {
        self.isbnTextField.text = nil
        self.textView.text = nil
    }
    
    @IBAction func onSearch(_ sender: AnyObject) {
        
        var isbn: String = isbnTextField?.text ?? ""
        isbn = isbn.isEmpty ? sampleISBN : isbn
        
        guard !isbn.isEmpty else { return }
        
        let link = baseUrl + isbn
        
        guard let url = URL(string: link) else { return }
        print("Querying: \(url)")
        
        func onComplete(data: Data?, response: URLResponse?, error: NSError?) {
            defer {
                self.hideNetworkIndicator()
            }
            
            if let error = error {
                print("Error retrieving Book: \(isbn) : \(error)")
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
