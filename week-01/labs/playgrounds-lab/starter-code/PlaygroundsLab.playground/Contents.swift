//: Playground - noun: a place where people can play

import UIKit
//this is needed to fix a caching bug for downloading images
URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

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
var aboutMe = "hi im shane"
var languagesKnown = "english"
var movieLIne = "I'm gonna make him an offer he can't refuse."

var image = from(link:"https://upload.wikimedia.org/wikipedia/commons/4/4e/Macaca_nigra_self-portrait_large.jpg")

image



//MARK: About Me
print(aboutMe)
print(languagesKnown)
print(movieLIne)

//MARK: Temperatures


    var monday = 98
    var tuesday = 89
    var wendsday = 97
    var thursday = 90
    var friday = 79

var averageTemp = (monday + tuesday + wendsday + thursday + friday) / 5

print(("The average temp is \(averageTemp)"))
    
   
    //One source for weather info: https://www.wunderground.com/history/

//MARK: Word problems





//MARK: logic lab excersize








