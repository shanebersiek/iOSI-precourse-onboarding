//
//  NumbersViewController.swift
//  FoundationClassesLab
//
//  Created by Wellington Moreno on 7/22/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class NumbersViewController : UITableViewController {
    
    
    fileprivate let numbers: [String] = Files.numbers.splitLines()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numbers.forEach({ print($0) })
        
        let sum = numbers
            .map() { Int($0) }
            .reduce(0) { first, second in
                return first + (second ?? 0)
            }
        print("Total Sum is :\(sum)")
    }
    
    
}

//MARK: Table View Methods
extension NumbersViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let row = indexPath.row
        
        guard row >= 0 && row < numbers.count else { return cell }
        
        let number = numbers[row]
        cell.textLabel?.text = "\(number)"
        return cell
    }
}
