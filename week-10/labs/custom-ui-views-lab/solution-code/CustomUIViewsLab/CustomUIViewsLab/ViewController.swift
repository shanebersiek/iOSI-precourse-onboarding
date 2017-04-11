//
//  ViewController.swift
//  CustomUIViewsLab
//
//  Created by Ezekiel Abuhoff on 7/18/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var barChart: BarChart!
    @IBOutlet weak var entryField: UITextField!
    
    // MARK: Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        entryField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Text Field
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let validatedData = validateData(textField.text)
        if validatedData.count > 0 {
            barChart.data = validatedData
            barChart.setNeedsDisplay()
        }
    }
    
    // MARK: Utility
    
    func validateData(_ dataString: String?) -> [Int] {
        guard let nonNilString = dataString else { return [] }
        guard let dataStrings: [String] = nonNilString.characters.split(separator: ",").map(String.init) else { return [] }
        guard let data: [Int] = dataStrings.map({ (datumString) -> Int in Int(datumString)! }) else { return [] }
        return data
    }
}

