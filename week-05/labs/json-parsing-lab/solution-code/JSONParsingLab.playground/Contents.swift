//: Playground - noun: a place where people can play

import Foundation
import UIKit

print("Hello!")

//=======================================================
//Exercise 1
//=======================================================

let placeJson = "{ \"name\" : \"Santa Monica Public Library\",  \"city\" : \"Santa Monica\", \"state\" : \"California\", \"zipCode\" : 90401 }"


struct Place  {
    
    let name: String
    let city: String
    let state: String
    let zipCode: Int
    
    static func placeFromJson(jsonDictionary dictionary: NSDictionary) -> Place? {
        
        guard let name = dictionary["name"] as? String else { return nil }
        guard let city = dictionary["city"] as? String else { return nil }
        guard let state = dictionary["state"] as? String else { return nil }
        guard let zipCode = dictionary["zipCode"] as? Int else { return nil }
        
        return Place(name: name, city: city, state: state, zipCode: zipCode)
    }
}

let place: Place? = {
    
    print("Converting JSON to Data Object")
    guard let data = placeJson.data(using: .utf8)
    else {
        print("Failed to convert String to Data")
        return nil
    }
    
    do {
        print("Deserializing JSON")
        
        let object = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
        
        print("JSON Deserialized")
        
        guard let dictionary = object as? NSDictionary else { return nil }
        
        return Place.placeFromJson(jsonDictionary: dictionary)
        
    }
    catch let ex {
        print("Failed to parse JSON Object: \(ex)")
        return nil
    }
    
}()

print(place)


//=======================================================
//Exercise 2
//=======================================================

let citiesJson = " [\"Istanbul\", \"Laguna Beach\", \"New York City\", \"Washington DC\", \"San Francisco\", \"Miami\"]"

do {
    if let data = citiesJson.data(using: .utf8) {
        let object = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        
        if let array = object as? NSArray as? [String] {
            
            for city in array {
                print(city)
            }
        }
    }
}
catch let ex {
    print("Failed to Parse JSON: \(ex)")
}



//=======================================================
//Exercise 3
//=======================================================

let kavinJson = "{ \"name\" : \"Kavin\", \"favorite_shows\" : [\"Breaking Bad\", \"Lost\", \"Dollhouse\", \"Black Mirror\", \"Fringe\"], \"address\" : { \"street\" : \"737 Southern Blvd\", \"city\" : \"Bronx\", \"state\" : \"New York\", \"zip_code\" : 10455 }, \"is_married\" : false, \"number_of_kids\" : 1 }"


struct Address {
    
    let street: String
    let city: String
    let state: String
    let zipCode: Int
    
    static func from(dictionary: NSDictionary) -> Address? {
        
        guard let street = dictionary["street"] as? String,
              let city = dictionary["city"] as? String,
              let state = dictionary["state"] as? String,
              let zipCode = dictionary["zip_code"] as? Int
        else {
            return nil
        }
        
        return Address(street: street, city: city, state: state, zipCode: zipCode)
    }
}

struct Friend {
    
    let name: String
    let favoriteShows: [String]
    let address: Address
    let isMarried: Bool
    let numberOfKids: Int
    
    static func from(dictionary: NSDictionary) -> Friend? {
        
        guard let name = dictionary["name"] as? String,
              let favoriteShows = dictionary["favorite_shows"] as? [String],
              let isMarried = dictionary["is_married"] as? Bool,
              let numberOfKids = dictionary["number_of_kids"] as? Int,
              let addressObject = dictionary["address"] as? NSDictionary,
              let address = Address.from(dictionary: addressObject)
        else {
            return nil
        }
        
        return Friend(name: name, favoriteShows: favoriteShows, address: address, isMarried: isMarried, numberOfKids: numberOfKids)
    }
}

let friend: Friend? = {
    
    guard let data = kavinJson.data(using: .utf8),
          let jsonObject = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
    else {
        print("Failed to deserialize Friend JSON")
        return nil
    }
    
    guard let dictionary = jsonObject as? NSDictionary else { return nil }
    
    return Friend.from(dictionary: dictionary)
    
}()

print(friend)