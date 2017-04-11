//
//  BarChart.swift
//  CustomUIViewsLab
//
//  Created by Ezekiel Abuhoff on 7/18/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

@IBDesignable

class BarChart: UIView {
    
    // MARK: Properties
    
    var data: [Int] = [4,2,6,3]
    @IBInspectable var barColor: UIColor = UIColor.green()
    
    // MARK: UIView
    
    override func draw(_ rect: CGRect) {
        let numberOfBars = data.count
        let barAreaWidth = rect.width / CGFloat(numberOfBars)
        let barWidth = barAreaWidth * 0.8
        let marginHeight = rect.height * 0.05
        let highestDatum = data.max()!
        
        for (index, datum) in data.enumerated() {
            // Bar width is standard
            let width = barWidth
            
            // The height of the bar must be proportional to the height of the barChart and the height of the tallest bar
            let height = (rect.height - (marginHeight * 2)) * (CGFloat(datum) / CGFloat(highestDatum))
            
            // The x coordinate must be proportional to the width of the barChart and index of the bar in the data array; also, it must take into account margins
            let x = CGFloat(index) * barAreaWidth + ((barAreaWidth - barWidth) / 2)
            
            // The y coordinate must account for the gap between the top of the bar and the top margin
            let y = marginHeight + ((rect.height - marginHeight * 2) - height)
            
            let barPath = UIBezierPath(rect: CGRect(x: x, y: y, width: width, height: height))
            barColor.setFill()
            barPath.fill()
        }
    }
}
