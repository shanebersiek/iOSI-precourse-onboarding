//
//  EmojiDictionary.swift
//  EmojiConverter
//
//  Created by Rudd Taylor on 8/9/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation

class EmojiDictionary {
    fileprivate let translations = [
        "happy": "😀",
        "sad": "🙁",
        "mad": "😡",
        "sleepy": "😴",
        "scared": "😱",
        "meh": "😑",
        "cool": "😎",
        "sick": "🤒",
        "alien": "👽",
        "robot": "🤖",
        "cat": "😼",
        "beyonce": "🐝"
    ]
    
    func emojiForText(_ text: String) -> String? {
        return self.translations[text]
    }
}
