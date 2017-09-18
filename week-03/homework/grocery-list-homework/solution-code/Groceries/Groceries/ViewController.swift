//
//  ViewController.swift
//  Groceries
//
//  Created by Rudd Taylor on 8/9/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, AddViewControllerDelegate {
    var groceries: [Grocery: Int] = [:]

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? AddViewController else { return }
        vc.addDelegate = self
    }
    
    // MARK: - AddViewControllerDelegate
    
    func addViewController(_ viewController: AddViewController, didSelectGrocery: Grocery) {
        if let groceryCount = self.groceries[didSelectGrocery] {
            self.groceries[didSelectGrocery] = groceryCount + 1
        } else {
            self.groceries[didSelectGrocery] = 1
        }
        self.dismiss(animated: true, completion: nil)
        self.tableView.reloadData()
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.groceries.keys.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let grocery = Array(self.groceries.keys)[(indexPath as NSIndexPath).row]
        let identifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        cell.textLabel?.text = "\(grocery.title)"
        cell.imageView?.image = grocery.image
        if let count = self.groceries[grocery] {
            cell.detailTextLabel?.text = "\(count)"
        }
        return cell
    }
}
