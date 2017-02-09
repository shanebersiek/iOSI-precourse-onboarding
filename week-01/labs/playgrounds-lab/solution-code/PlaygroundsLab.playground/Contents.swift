//: Playground - noun: a place where people can play

import UIKit

var string = "Hello Playground"
string += ". Let's play around the ground."

let length = string.characters.count

print ("Length of String is \(length)")


//MARK: Load UIImageView from a Link
func from(link: String) -> UIImageView? {
    
    guard let url = URL(string: link),
        let data = try? Data(contentsOf: url),
        let image = UIImage(data: data)
        else {
            return nil
    }
    
    return UIImageView(image: image)
}

//MARK: About Me

let name = "Sir Wellington"
let age = 17e5

let languages = ["English", "Español", "Italiano", "Java", "Swift", "C++"]
print("I can speak these languages: \(languages)")

let profileImageLink = "http://www.gravatar.com/avatar/05638cc852aaee36691fb4f939ead06f"
let profileImageView = from(link: profileImageLink)



//MARK: A Place I love

let nameOfPlace = "Venice"


let placeLink = "http://pre00.deviantart.net/d10f/th/pre/i/2013/199/a/7/venezia_vintage_by_japanhead69-d6e1fuz.jpg"
let placeImageView = from(link: placeLink)


//MARK: Temperatures
let one = 79
let two = 88
let three = 68
let four = 61
let five = 93

let averageTemperature = (one + two + three + four + five) / 5
print("The Average Temperature over the last five days is \(averageTemperature)")


//MARK: Planet Calculation
let mercury = 4_879
let venus = 12_104
let mars = 6_792
let jupiter = 142_984
let saturn = 120_536
let uranus = 51_118
let neptune = 49_528

let totalDiameters = mercury + venus + mars + jupiter + saturn + uranus + neptune

let distanceBetweenEarthAndMoon = 384_400

if totalDiameters < distanceBetweenEarthAndMoon {
    print("The Planets can fit")
}
else {
    print("The Planets cannot fit")
}


//MARK: Math Problems

let heatherSpeedInMilesPerHour = 182.4/3
let hoursInAWeek: Double = 24*7
print("Heather can travel \(heatherSpeedInMilesPerHour * hoursInAWeek) miles in a week")


let yeiRate: Double = 12/20
let timeToRingOneThousand: Double = (1000/20) * 12

print("It would take Yei \(timeToRingOneThousand) minutes to ring up a thousand customers")
