//
//  ViewController.swift
//  ScrollViews
//
//  Created by Rudd Taylor on 8/23/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scrollView = UIScrollView()
    let imageViews = ["bg1", "bg2", "bg3", "bg4"].flatMap{ return UIImage(named: $0) }.map { return UIImageView(image: $0)}
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.scrollView)
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "|[v]|", options: [], metrics: nil, views: ["v": self.scrollView]))
        self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[top][v]|", options: [], metrics: nil, views: ["v": self.scrollView, "top": self.topLayoutGuide]))
        self.imageViews.enumerated().forEach {
            $0.element.translatesAutoresizingMaskIntoConstraints = false
            self.scrollView.addSubview($0.element)
            self.scrollView.addConstraint(NSLayoutConstraint(item: $0.element, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300))
            self.scrollView.addConstraint(NSLayoutConstraint(item: $0.element, attribute: .left, relatedBy: .equal, toItem: self.scrollView, attribute: .left, multiplier: 1, constant: 0))
            self.scrollView.addConstraint(NSLayoutConstraint(item: $0.element, attribute: .right, relatedBy: .equal, toItem: self.scrollView, attribute: .right, multiplier: 1, constant: 0))
            $0.element.isUserInteractionEnabled = true
            $0.element.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapImage)))
        }
        var formatString = self.imageViews.enumerated().reduce("V:|") { (reduction, enumeration) in
            return reduction + "[bg\(enumeration.offset)(300)]"
        }
        formatString += "|"
        self.scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: formatString, options: [], metrics: nil, views: ["bg0": self.imageViews[0], "bg1": self.imageViews[1], "bg2": self.imageViews[2], "bg3": self.imageViews[3]]))
    }
    
    func didTapImage(_ gestureRecognizer: UITapGestureRecognizer) {
        guard let imageView = gestureRecognizer.view as? UIImageView, let image = imageView.image else { return }
        self.show(ImageViewController(image: image), sender: nil)
    }
}

