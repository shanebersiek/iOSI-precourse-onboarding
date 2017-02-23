//
//  GroceryColorViewController.swift
//  Groceries
//
//  Created by Rudd Taylor on 8/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class GroceryColorViewController: UIViewController {
    let grocery: Grocery
    init(grocery: Grocery) {
        self.grocery = grocery
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        self.navigationItem.title = "Grocery Color"

        if self.grocery.title == "Banana" {
            self.view.backgroundColor = UIColor.yellow
        }
        if self.grocery.title == "Orange" {
            self.view.backgroundColor = UIColor.orange
        }
        if self.grocery.title == "Apple" {
            self.view.backgroundColor = UIColor.green
        } else { // Red Apple
            self.view.backgroundColor = UIColor.red
        }
        if self.grocery.title == "Milk" {
            self.view.backgroundColor = UIColor.white
        }
        if self.grocery.title == "Cereal" {
            self.view.backgroundColor = UIColor(red: 255/255.0, green: 239/255.0, blue: 213/255.0, alpha: 1)
        }
        if self.grocery.title == "Bread" {
            self.view.backgroundColor = UIColor(red: 139/255.0, green: 119/255.0, blue: 101/255.0, alpha: 1)
        }
        if self.grocery.title == "Cheese" {
            self.view.backgroundColor = UIColor(red: 255/255.0, green: 212/255.0, blue: 0/255.0, alpha: 1)
        }
    }
}
