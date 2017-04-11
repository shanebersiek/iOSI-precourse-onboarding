//
//  ViewController.swift
//  iOSVersionsLab
//
//  Created by Ezekiel Abuhoff on 7/25/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Properties
    
    @IBOutlet weak var contactsTable: UITableView!
    
    var contactNames = [String]()
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        contactsTable.delegate = self
        contactsTable.dataSource = self
    }
    
    // MARK: Contacts
    
    func handleContactNames(_ names: [String]) {
        contactNames = names
        contactsTable.reloadData()
    }
    
    // MARK: Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contactNames[indexPath.row]
        return cell
    }
}

