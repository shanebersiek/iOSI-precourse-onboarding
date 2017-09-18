//
//  SectionViewController.swift
//  SizeClassesLab
//
//  Created by Wellington Moreno on 7/15/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class SectionViewController : UITableViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var section: String!
    var photos: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard section != nil else {
            
            self.dismiss()
            return
        }
        
        self.titleLabel?.text = section
        self.tableView.estimatedRowHeight = 300
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    private func dismiss() {
        self.navigationController?.popViewController(animated: true)
    }
}

//MARK: Segues
extension SectionViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        guard let photoViewController = segue.destinationViewController as? PhotoViewController
        else {
            return
        }
        
        let row = self.tableView?.indexPathForSelectedRow?.row ?? 0
        
        let photo = photos[row]
        photoViewController.photo = photo
    }
}

//MARK: Table View Methods
extension SectionViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? SectionPhotoCell
        else {
            return UITableViewCell()
        }
        
        guard row >= 0 && row  < photos.count else { return UITableViewCell() }
        
        let photo = photos[row]
        cell.photo.image = photo
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     
        return UITableViewAutomaticDimension
    }
}

class SectionPhotoCell : UITableViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    
}
