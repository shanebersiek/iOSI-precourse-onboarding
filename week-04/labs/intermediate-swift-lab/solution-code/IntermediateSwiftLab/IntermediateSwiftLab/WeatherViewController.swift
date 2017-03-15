//
//  WeatherViewController.swift
//  IntermediateSwiftLab
//
//  Created by Wellington Moreno on 7/12/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var weatherConditionsLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    fileprivate let weatherImages: [WeatherCondition : UIImage] = [
        .Sunny : #imageLiteral(resourceName: "Weather-Sunny"),
        .Rainy : #imageLiteral(resourceName: "Weather-Rainy"),
        .Overcast : #imageLiteral(resourceName: "Weather-Overcast"),
        .Cloudy : #imageLiteral(resourceName: "Weather-Cloudy")
    ]
    
    fileprivate let blueSkiesColor = UIColor(colorLiteralRed: 63/255, green: 169/255, blue: 245/255, alpha: 1.0)
    fileprivate let overcastColor = UIColor(colorLiteralRed: 179/255, green: 179/255, blue: 179/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WeatherService.instance.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//MARK: Weather Updates
extension WeatherViewController : WeatherDelegate {
    
    func weatherDidUpdate(weatherStatus: WeatherStatus) {
        
        if let image = weatherImages[weatherStatus.conditions] {
            self.weatherImageView.image = image
        }

        self.weatherConditionsLabel.text = weatherStatus.conditions.rawValue
        self.temperatureLabel.text = "\(weatherStatus.temperature)"
        
        
        switch weatherStatus.conditions {
            
            case .Rainy, .Overcast :
                self.view.backgroundColor = overcastColor
                
            default:
                self.view.backgroundColor =  blueSkiesColor
        }
    }
}

