//
//  Flower.swift
//  DebuggingLab
//
//  Created by Wellington Moreno on 7/7/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//
//  SPECIAL NOTE: Descriptions sourced from http://flower-expert.com/


import Foundation
import UIKit

class Flower {
    
    let name: String
    let description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    
    private static let flowerImageMapping: [String : String] = [
        "Anthurium" : "Flower-10",
        "Rose" : "Flower-5",
        "Tulips" : "Flower-1",
        "Daisy" : "Flower-11",
        "Carnation" : "Flower-8"
        
    ]
    
    private static func imageForFlower(_ flower: Flower) -> UIImage? {
        
        let flowerName = flower.name
        
        guard let imageName = flowerImageMapping[flowerName] else {
            return nil
        }
        
        return UIImage(named: imageName)
    }
    
    var image: UIImage? {
        return Flower.imageForFlower(self)
    }
    
    static let flowers: [Flower] = [
        
        Flower(name: "Anthurium", description: "In Greek, the name Anthurium means tail flower. The plant's stem lengths may grow to a height of 15-20 inches depending on the size of the spathe, i.e., the bigger the spathe, the longer the stem. Its leaves are usually simple, large, attractively colored and borne on long stalks.\n\nThe flowering stalk is slender, ending in a fleshy column crowded with many unisexual flowers. They have leafy bracts which may be white, yellow, red, pink, orange or green."),
        
        Flower(name: "Rose", description: "The rose has been a symbol of love, beauty, even war and politics from way back in time. The variety, color and even number of Roses carry symbolic meanings. The Rose is most popularly known as the flower of love, particularly Red Rose. \n\nRoses have been the most popular choice of flowers for the purpose of gifting across the world. They also act as a great addition to home and office decor. A bunch of roses or even a single rose works wonders aesthetically and considerably enlivens a place. Besides fresh cut roses, artificial flowers like silk roses in different colors are also widely used as decoration."),
        
        Flower(name: "Tulips", description: "The word Tulip is thought to be a corruption of the Turkish word 'tulbend' for turban. The Tulip was introduced by a famous Austrian biologist Carolus Clusius. Tulip plants belong to the genus Tulipa, in the lily family, Liliaceae. \n\nTulips bloom on bulbous plants, with large, showy flowers with six petals. There are around 100 species of Tulips, which actually came from the Central Asia where they grew wild. Turkish growers first cultivated tulips as early as 1,000 AD."),
        
        Flower(name: "Daisy", description: "Probably the commonest wild flower we have! Daisies can actually be found in flower in every month of the year, and the flowers are very beautiful close up. Botanically speaking, the \"flower\" is in fact a collection or composite of numerous individual flowers, each with its own anthers and stigma; those in the centre of the flower-head are known as \"disk florets\", and those round the edge bearing the white petals \"ray florets\". The Daisy family or Compositae is the largest family of flowering plants."),
        
        Flower(name: "Carnation", description: "Of the several kinds of Carnations, the three most common are the annual carnations, border carnations and perpetual-flowering carnations. Carnations are also commonly referred to by their scientific name, \"Dianthus\", the name given by the Greek botanist Theopharastus. Carnations got the name Dianthus from two Greek Words - \"dios\", referring to the god Zeus, and \"anthos\", meaning flower. Carnations are thus known as the \"The Flowers of God\".")
    ]
}
