//
//  ViewController.swift
//  IBOutletsLab
//
//  Created by Wellington Moreno on 6/30/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var fromField: UITextField!
    
    @IBOutlet weak var toField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    private let conversionTitles: [Int : String] = [
        0 : "fahrenheit -> celcius",
        1 : "celcius -> fahrenheit",
        2 : "kilograms -> lbs",
        3 : "lbs -> kilograms"
    ]
    
    private lazy var conversionFormulas: [Int : ((Double) -> (Double))] = [
        0 : self.fahrenheitToCelsius,
        1 : self.celsiusToFahrenheit,
        2 : self.kilogramsToPounds,
        3 : self.poundsToKilograms
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
    }


    @IBAction func onGo(_ sender: AnyObject) {
        doConversion()
    }
    
    private func doConversion() {
        
        guard let text = fromField?.text,
              !text.isEmpty,
              let value = Double(text)
        else {
            return
        }
        
        let selectedConversionIndex = pickerView.selectedRow(inComponent: 0)
        
        let conversionFunction: (Double) -> (Double) = getFormula(forIndex: selectedConversionIndex)
        
        let result = conversionFunction(value)
        toField.text = String(format: "%.3f", result)
    }

    private func getFormula(forIndex index: Int) -> (Double) -> (Double) {
        
        if let matchingFormula = conversionFormulas[index] {
            return matchingFormula
        }
        else {
            return self.fahrenheitToCelsius
        }
    }
    
    private func fahrenheitToCelsius(fahrenheit: Double) -> Double {
        return (fahrenheit - 32) * 5/9
    }
    
    private func celsiusToFahrenheit(celsius: Double) -> Double {
        return (celsius * 9/5) + 32
    }
    
    private func kilogramsToPounds(kilograms: Double) -> Double {
        return kilograms * 2.20462
    }
    
    private func poundsToKilograms(pounds: Double) -> Double {
        return pounds / 2.20462
    }
    

    //MARK: UIPicker Methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch row {
        case 0 :
            return "fahrenheit -> celcius"
        case 1 :
            return "celcius -> fahrenheit"
        case 2:
            return "kilograms -> lbs"
        case 3:
            return "lbs -> kilograms"
        default:
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        doConversion()
    }
}
