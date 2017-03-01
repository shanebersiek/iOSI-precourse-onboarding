//
//  AddViewController.swift
//  Groceries
//
//  Created by Rudd Taylor on 8/9/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

protocol AddViewControllerDelegate: class {
    func addViewController(_ viewController: AddViewController, didSelectGrocery: Grocery)
}

class AddViewController: UITableViewController {
    weak var addDelegate: AddViewControllerDelegate?
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Grocery.allGroceries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "grocery"
        let grocery = Grocery.allGroceries[(indexPath as NSIndexPath).row]
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) ?? UITableViewCell(style: .default, reuseIdentifier: identifier)
        cell.imageView?.image = grocery.image
        cell.textLabel?.text = grocery.title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let grocery = Grocery.allGroceries[(indexPath as NSIndexPath).row]
        self.addDelegate?.addViewController(self, didSelectGrocery: grocery)
    }
}
