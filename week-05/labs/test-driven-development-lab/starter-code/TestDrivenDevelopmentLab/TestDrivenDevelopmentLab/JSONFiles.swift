//
//  JSONFiles.swift
//  TestDrivenDevelopmentLab
//
//  Created by Wellington Moreno on 7/14/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation


class JSONFiles {
    
    static var colors: String? {
        return loadJsonFile(name: "colors")
    }
    
    static var facebook: String? = ""
    
    static var googleMaps: String? = nil
    
    static var twitter: String? = ""
    
    static var youtube: String? = nil
    
    
    private static func loadJsonFile(name: String) -> String? {
        let path = "\(name)"
        
        guard let url = Bundle.main.urlForResource(path, withExtension: "json")
        else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else { return nil }
        
        return String.init(data: data, encoding: .utf8)
    }
}
