//
//  ViewController.swift
//  CustomTableViewsLab
//
//  Created by Wellington Moreno on 7/21/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class PostsViewController: UITableViewController {

    
    fileprivate let totalPosts = 40
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = 300
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

//MARK: TableView Method
extension PostsViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return totalPosts
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let post = Post.newPost()
       
        if post.isImagePost {
            return imageCell(tableView, for: indexPath, and: post)
        }
        else {
            return textCell(tableView, for: indexPath, and: post)
        }
    }
    
    
    private func imageCell(_ tableView: UITableView, for indexPath: IndexPath, and post: Post) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as? ImageCell
        else {
            return UITableViewCell()
        }
        
        cell.photoView?.image = post.image
        cell.textView?.text = post.text
        
        return cell
    }
    
    private func textCell(_ tableView: UITableView, for indexPath: IndexPath, and post: Post) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath) as? TextCell
        else {
            return UITableViewCell()
        }
        
        cell.textView?.text = post.text
        
        return cell
    }
}


//MARK: Custom Cells

class ImageCell: UITableViewCell {
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var textView: UITextView!
}

class TextCell: UITableViewCell {
    
    @IBOutlet weak var textView: UITextView!
}
