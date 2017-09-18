//
//  TimesViewController.swift
//  FoundationClassesLab
//
//  Created by Wellington Moreno on 7/22/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class TimesViewController : UITableViewController {
    
    fileprivate let times = {
        
        return Files.times.splitLines()
            .map() { Double.init($0) } //Convert to Double
            .filter() { $0 != nil }
            .map() { $0! }
            .map() { Date(timeIntervalSince1970: $0) }
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

//MARK: Table View Methods
extension TimesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return times.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let row = indexPath.row
        
        guard row >= 0 && row < times.count else { return cell }
        
        let time = times[row]
        cell.textLabel?.text = time.humanReadable
        
        return cell
    }
}


//MARK: Extensions
private extension Date {
    
    var humanReadable: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: self)
    }
}
