//
//  SectionsViewController.swift
//  SizeClassesLab
//
//  Created by Wellington Moreno on 7/15/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class SectionListViewController : UITableViewController {
    
    private let sections = ["Architecture" , "Art", "Photography"]
    private let coverPhotos = [
        "Architecture" : #imageLiteral(resourceName: "Arc-1"),
        "Art" : #imageLiteral(resourceName: "Painting-1"),
        "Photography" : #imageLiteral(resourceName: "Shot-1")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView?.estimatedRowHeight = 300
    }
}

//MARK: Segues
extension SectionListViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        guard let sectionViewController = segue.destinationViewController as? SectionViewController
        else { return }
        
        let selectedRow = self.tableView?.indexPathForSelectedRow?.row ?? 0
        
        let section = sections[selectedRow]
        
        sectionViewController.section = section
        
        switch section {
            
            case "Art" :
                sectionViewController.photos = Images.artPhotos
            case "Photography" :
                sectionViewController.photos = Images.photographyShots
            default :
                sectionViewController.photos = Images.architecturePhotos
            
        }
    }
}

//MARK: Table View Methods
extension SectionListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        guard row >= 0 && row < sections.count else {
            return UITableViewCell()
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SectionCell
        else {
            return UITableViewCell()
        }
        
        let section = sections[row]
        
        if let cover = coverPhotos[section] {
            cell.coverPhoto.image = cover
            cell.sectionTitleLabel.text = section
        }
        cell.layoutIfNeeded()
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

class SectionCell : UITableViewCell {
    
    @IBOutlet weak var coverPhoto: UIImageView!
    @IBOutlet weak var sectionTitleLabel: UILabel!
    
}
