//
//  ViewController.swift
//  iOSNetworkingLab
//
//  Created by Wellington Moreno on 7/11/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class APIListViewController: UITableViewController {

    private let APIs = [ "Google Books", "Google Maps", "Reddit"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

//MARK: Table View Methods

extension APIListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return APIs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "APICell", for: indexPath)
        
        guard row >= 0 && row < APIs.count else { return cell }
        
        let api = APIs[row]
        cell.textLabel?.text = api
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let row = indexPath.row
        guard row >= 0 && row < APIs.count else { return }
        
        let api = APIs[row]
        
        switch api {
            
            case "Google Books" :
                goToGoogleBooks()
            
            case "Google Maps" :
                goToGoogleMaps()
        
            case "Reddit" :
                goToReddit()
            
            default :
                break
        }
    }
    
}


//MARK: Segues
extension APIListViewController {
    
    private func goToGoogleBooks() {
        self.performSegue(withIdentifier: "ToGoogleBooks", sender: self)
    }
    
    private func goToGoogleMaps() {
        self.performSegue(withIdentifier: "ToGoogleMaps", sender: self)
    }
    
    private func goToReddit() {
        self.performSegue(withIdentifier: "ToReddit", sender: self)
    }
}
