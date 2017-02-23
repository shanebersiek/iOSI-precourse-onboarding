//
//  ViewController.swift
//  DebuggingLab
//
//  Created by Wellington Moreno on 7/7/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class FlowerListViewController: UITableViewController {

    private let flowers = Flower.flowers
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    private func goToFlower(_ flower: Flower) {
        self.performSegue(withIdentifier: "Next", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let flowerView = segue.destinationViewController as? FlowerViewController {
            
            if let flower = sender as? Flower {
                flowerView.flower = flower
            }
        }
    }
}

//MARK: Table View Data Source Methods
extension FlowerListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = (indexPath as NSIndexPath).row
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? FlowerCell
        else {
            return FlowerCell()
        }
        
        let flower = flowers[row]
        
        
        cell.flowerImage.image = flower.image
        cell.flowerNameLabel.text = flower.name
        
        return cell
    }
}

//MARK: Table View Delegate Methods
extension FlowerListViewController {
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let row = (indexPath as NSIndexPath).row
        let flower = flowers[row]
        self.goToFlower(flower)
    }
}
