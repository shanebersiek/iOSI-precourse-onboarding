//: Playground - noun: a place where people can play

import UIKit

var string = "Hello Playground"

string += ". Let's play around the ground."

//MARK: Load UIImageView from a Link
//This may be useful in your quest
func from(link: String) -> UIImageView? {
    
    guard let url = URL(string: link),
        let data = try? Data(contentsOf: url),
        let image = UIImage(data: data)
        else {
            return nil
    }
    
    return UIImageView(image: image)
}

//Add your code here

//MARK: About Me

//MARK: Temperatures
//One source for weather info: https://www.wunderground.com/history/

//MARK: Word problems