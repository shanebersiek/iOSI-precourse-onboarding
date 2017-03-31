//
//  DetailViewController.swift
//  PlatformIntegration
//
//  Created by Rudd Taylor on 9/6/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var detailItem: Picture? {
        didSet {
            self.configureView()
        }
    }
    
    override func viewDidLoad() {
        self.configureView()
    }

    func configureView() {
        // Update the user interface for the detail item.
        guard let detail = self.detailItem else { return }
        self.detailDescriptionLabel?.text = detail.createdAt.description
        self.imageView?.image = detail.image
    }
}

