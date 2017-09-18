//
//  Colors.swift
//  TestDrivenDevelopmentLab
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation


struct Color {
    
    let name: String
    let hex: String
}

class Colors {
    
    static func colors(fromJson json: String) -> [Color] {
        
        var colors: [Color] = []
        
        guard let data = json.data(using: .utf8) else { return colors }
        
        guard let object = try? JSONSerialization.jsonObject(with: data) as? NSDictionary
        else {
            print("Could not parse an Object from the JSON")
            return colors
        }
        
        guard let colorArray = object?["colorsArray"] as? NSArray
        else {
            print("Could not parse an Object Array from the JSON")
            return colors
        }
        
        for case let colorObject as NSDictionary in colorArray {
            
            if let name = colorObject["colorName"] as? String,
               let hex = colorObject["hexValue"] as? String
            {
                colors.append(Color(name: name, hex: hex))
            }
        }
        
        return colors
    }
    
    static func colorName(fromJson json: String) -> [String] {
        
        return Colors.colors(fromJson: json).map() { $0.name }
    }
    
    static func hexValue(forColorWithName name: String, fromJson json: String) -> String? {
        
        let colors = Colors.colors(fromJson: json)
        
        let result = colors.first(where: { $0.name == name })
        return result?.hex
    }
}

extension Color : Equatable {
    
}

func ==(lhs: Color, rhs: Color) -> Bool {
    
    return lhs.name == rhs.name &&
           lhs.hex == rhs.hex
}
