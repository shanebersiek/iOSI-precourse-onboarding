//
//  ImageViewController.swift
//  ScrollViews
//
//  Created by Rudd Taylor on 8/23/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    var image: UIImage
    let  scrollView = UIScrollView()
    init(image: UIImage) {
        self.image = image
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.backgroundColor = UIColor.white
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.scrollView)
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|[v]|", options: [], metrics: nil, views: ["v": self.scrollView]))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[top][v]|", options: [], metrics: nil, views: ["v": self.scrollView, "top": self.topLayoutGuide]))
        let imageView = UIImageView(image: self.image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.scrollView.addSubview(imageView)
        self.scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|[v(\(self.image.size.width))]|", options: [], metrics: nil, views: ["v": imageView]))
        self.scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v(\(self.image.size.height))]|", options: [], metrics: nil, views: ["v": imageView]))
    }
}
