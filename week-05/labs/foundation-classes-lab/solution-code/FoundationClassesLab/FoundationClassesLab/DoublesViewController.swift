//
//  DoublesViewController.swift
//  FoundationClassesLab
//
//  Created by Wellington Moreno on 7/22/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class DoubleViewController : UITableViewController {
    
    fileprivate let doubles = Files.doubles
    
    fileprivate var numbericalDoubles: [Double] {
        
        return doubles
            .splitLines()
            .map() { Double($0) }
            .filter() { $0 != nil }
            .map() { $0! }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sum = numbericalDoubles.reduce(0.0, { $0 + $1 })
        let average = sum / Double(numbericalDoubles.count)
        print("Average of all doubles is: \(average)")
    }
}

//MARK: Table View Methods
extension DoubleViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbericalDoubles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        guard row >= 0 && row < numbericalDoubles.count else { return cell }
        
        guard let double = numbericalDoubles[row].scientificNotation else { return  cell }
        
        cell.textLabel?.text = "\(double)"
        return cell
    }
}


//Extensions
private extension Double {
    
    var scientificNotation: String? {
        
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 3
        formatter.numberStyle = .scientific
        
        return formatter.string(from: NSNumber(value: self))
    }
}
