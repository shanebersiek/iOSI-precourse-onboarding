
//
//  ViewController.swift
//  FixThisBug
//
//  Created by Rudd Taylor on 8/28/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit
import SDWebImage
import RedditClient

class ViewController: UITableViewController {
    var stories: [RedditStory]? {
        didSet {
            self.tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        self.navigationItem.title = "Reddit Headlines"
        let client = RedditClient()
        client.fetchTopStories { (stories, error) in
            if let error = error {
                let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            self.stories = stories
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.stories?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        guard let story = self.stories?[indexPath.row] else { preconditionFailure() }
        cell.textLabel?.text = story.title
        cell.detailTextLabel?.text = story.author
        if let imageUrl = story.previewImageUrl {
            cell.imageView?.image = nil
            cell.imageView?.sd_setImage(with: imageUrl, placeholderImage: UIImage(named: "loading"))
        }
        return cell
    }
}

