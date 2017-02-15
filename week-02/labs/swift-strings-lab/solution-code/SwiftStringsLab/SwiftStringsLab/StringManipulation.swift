//
//  StringManipulation.swift
//  SwiftStringsLab
//
//  Created by Ezekiel Abuhoff on 7/18/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

class StringManipulation {
    static func reverse(string inputString: String) -> String {
        return String(inputString.characters.reversed())
    }
    
    static func characterIndicesFor(string inputString: String) -> String {
        var indicesAndCharacters = ""
        for (index, character) in inputString.characters.enumerated() {
            indicesAndCharacters += String(index)
            indicesAndCharacters += String(character)
        }
        return indicesAndCharacters
    }
    
    static func wordsFrom(sentence: String) -> [String] {
        return sentence.characters.split(separator: " ").map(String.init)
    }
    
    static func longWordsIn(sentence: String) -> [String] {
        let words = wordsFrom(sentence: sentence)
        return words.filter { $0.characters.count > 3 }
    }
    
    static func composeSentenceFrom(words: [String]) -> String {
        var sentence = words.reduce("") { text, word in "\(text) \(word)" }
        sentence.remove(at: sentence.startIndex)
        return sentence
    }
}
