//
//  Files.swift
//  FoundationClassesLab
//
//  Created by Wellington Moreno on 7/22/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

class Files {
    
    static let numbers: String = Files.loadText(filename: "numbers")
    static let doubles: String = Files.loadText(filename: "doubles")
    static let times: String = Files.loadText(filename: "times")

    private static func loadText(filename: String) -> String {
        
        let path = "assets/" + filename
        if let url = Bundle.main.url(forResource: path, withExtension: ".txt") {
            
            if let string = try? String(contentsOf: url) {
                return string
            }
            
        }
        
        return ""
    }

}


//MARK: Extensions
extension String {
    
    func splitLines() -> [String] {
        
        let split = self.characters.split(separator: "\n")
        
        return split.map(String.init)
    }
}
