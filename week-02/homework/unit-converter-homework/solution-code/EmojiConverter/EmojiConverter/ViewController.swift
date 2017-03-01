//
//  ViewController.swift
//  EmojiConverter
//
//  Created by Rudd Taylor on 8/9/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    let dictionary = EmojiDictionary()
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func didTapTranslate(_ sender: AnyObject) {
        if let text = self.textField.text, let translation = self.dictionary.emojiForText(text) {
            self.resultLabel.text = translation
        } else {
            self.resultLabel.text = "No emoji found!"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.didTapTranslate(textField)
        return true
    }
}
