//
//  ViewController.swift
//  PassingDataLab
//
//  Created by Wellington Moreno on 7/5/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class PlanetListViewController: UITableViewController {

    private var planets: [Planet] = Planet.planets
    
    private var selectedIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

//MARK: Table View Data Methods
extension PlanetListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let row = (indexPath as NSIndexPath).row
        guard row >= 0 && row < planets.count else { return cell }
        
        let planet = planets[row]
        cell.textLabel?.text = planet.name
        return cell
    }
}

//MARK: Table View Delegate Methods
extension PlanetListViewController {
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = (indexPath as NSIndexPath).row
        
        guard row >= 0 && row < planets.count else { return }
        
        self.segueToPlanetInfo(row)
    }
}

//MARK: Prepare for Segue. This is wher we pass the data.
extension PlanetListViewController {
    
    private func segueToPlanetInfo(_ selectedIndex: Int) {
        self.selectedIndex = selectedIndex
        self.performSegue(withIdentifier: "ToPlanetInfo", sender: selectedIndex)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destination = segue.destinationViewController
        
        if let planetInfo = destination as? PlanetInfoViewController, let selectedIndex = sender as? Int {
            
            let planet = planets[selectedIndex]
            planetInfo.planet = planet
        }
    }
}
