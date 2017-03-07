//
//  Grocery.swift
//  Groceries
//
//  Created by Rudd Taylor on 8/9/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

// Required for Equateable
func ==(lhs: Grocery, rhs: Grocery) -> Bool {
    return lhs.title == rhs.title
}

class Grocery: AnyObject, Hashable {
    var title: String
    var image: UIImage?
    var hashValue: Int { // Required for Hashable
        return self.title.hashValue
    }

    init(title: String, image: UIImage?) {
        self.title = title
        self.image = image
    }
    
    class var allGroceries: [Grocery] {
        return [
            Grocery(title: "Banana", image: UIImage(named: "banana")),
            Grocery(title: "Apple", image: UIImage(named: "apple")),
            Grocery(title: "Red Apple", image: UIImage(named: "red-apple")),
            Grocery(title: "Orange", image: UIImage(named: "orange")),
            Grocery(title: "Milk", image: UIImage(named: "milk")),
            Grocery(title: "Cereal", image: UIImage(named: "cereal")),
            Grocery(title: "Bread", image: UIImage(named: "bread")),
            Grocery(title: "Cheese", image: UIImage(named: "cheese")),
        ]
    }
}
