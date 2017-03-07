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
        let grocery = Array(self.groceries.keys)[indexPath.row]
        let identifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        cell.textLabel?.text = "\(grocery.title)"
        cell.imageView?.image = grocery.image
        if let count = self.groceries[grocery] {
            cell.detailTextLabel?.text = "\(count)"
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let message: String
        //BUG: The below code is broken because it does not take into account the difference between our internal 
        // numberical offsets (which start at 0) and spoken English numerical offsets (which start with "first").
//        switch(indexPath.row) {
//        case 1:
//            message = "Your first grocery item"
//        case 2:
//            message = "Your second grocery item"
//        case 3:
//            message = "Your third grocery item"
//        case 4:
//            message = "Your fourth grocery item"
//        case 5:
//            message = "Your fifth grocery item"
//        default:
//            message = "Wow, you have a lot of groceries!"
//        }
        // Fix:
        switch indexPath.row {
        case 0:
            message = "Your first grocery item"
        case 1:
            message = "Your second grocery item"
        case 2:
            message = "Your third grocery item"
        case 3:
            message = "Your fourth grocery item"
        case 4:
            message = "Your fifth grocery item"
        default:
            message = "Wow, you have a lot of groceries!"
        }
        // End fix
        let alert = UIAlertController(title: "You selected...", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "View this color", style: .default, handler: { _ in
            self.show(GroceryColorViewController(grocery: Array(self.groceries.keys)[indexPath.row]), sender: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

