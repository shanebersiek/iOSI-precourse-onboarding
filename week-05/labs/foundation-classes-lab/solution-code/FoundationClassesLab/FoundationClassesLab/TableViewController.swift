//
//  ViewController.swift
//  FoundationClassesLab
//
//  Created by Wellington Moreno on 7/22/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    fileprivate let views = ["Numbers", "Doubles", "Times"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//MARK: Segues
fileprivate extension TableViewController {
    
    func goToDoubles() {
        self.performSegue(withIdentifier: "ToDoubles", sender: self)
    }
    
    func goToNumbers() {
        self.performSegue(withIdentifier: "ToNumbers", sender: self)
    }
    
    func goToTimes() {
        self.performSegue(withIdentifier: "ToTimes", sender: self)
    }
}

//MARK: Table View Methods
extension TableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return views.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let row = indexPath.row
        guard row >= 0 && row < views.count else { return cell }
        
        let view = views[row]
        cell.textLabel?.text = view
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = indexPath.row
        guard row >= 0 && row < views.count else { return }
        
        let view = views[row]
        
        switch view {
            case "Numbers": self.goToNumbers()
            case "Doubles" : self.goToDoubles()
            case "Times" : self.goToTimes()
            default :
                break
        }
    }
}
