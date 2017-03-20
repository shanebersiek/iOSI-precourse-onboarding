//
//  Giphy.swift
//  InteractiveUIsLab
//
//  Created by Wellington Moreno on 7/21/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import UIKit


typealias Callback = (UIImage?) -> ()

//MARK: Giphy API Calls
class Giphy {
    
    //MARK: API info
    private static let apiLink = "https://api.giphy.com/v1/gifs/search?"
    private static let apiKey = "dc6zaTOxFJmzC"
    
    //MARK: Async Operations
    private static let async: OperationQueue = {
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 1
        return queue
    }()
    
    private static let main = OperationQueue.main
    
    static func searchForImage(withTerm term: String, onDone callback: @escaping Callback) {
        
        guard let url = createUrlFor(searchTerm: term)
        else {
            callback(nil)
            return
        }
       
        async.maxConcurrentOperationCount = 1
        
        loadSearchResults(for: url, withCallback: callback)
    }
    
    private static func createUrlFor(searchTerm term: String) -> URL? {
        
        guard let escapedTerm = term.urlEscaped else { return nil }
        
        let link = "\(apiLink)q=\(escapedTerm)&api_key=\(apiKey)"
        
        return URL(string: link)
    }
    
    private static func loadSearchResults(for url: URL, withCallback callback: @escaping Callback) {
        
        func exitWithImage(image: UIImage) {
            
            self.main.addOperation() { callback(image) }
        }
        
        func exitWithoutImage() {
            
            self.main.addOperation() { callback(nil) }
        }
        
        self.async.addOperation() {
            
            guard let data = try? Data(contentsOf: url),
                  let json = (try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)) as? NSDictionary
            else {
                exitWithoutImage()
                return
            }

            guard let dataArray = json["data"] as? NSArray , dataArray.notEmpty
            else {
                exitWithoutImage()
                return
            }
            
            let giphyObjects = dataArray
                .filter() { $0 is NSDictionary }
                .map() { $0 as! NSDictionary }
                .map(GiphyDataObject.fromJson)
                .filter() { $0 != nil }
                .map() { $0! }
            
            guard !giphyObjects.isEmpty else {
                print("No Results found.")
                exitWithoutImage()
                return
            }
            
            if let image = oneImageFrom(giphyObjects: giphyObjects) {
                exitWithImage(image: image)
            }
            else {
                exitWithoutImage()
            }
        }

    }
    
    private static func oneImageFrom(giphyObjects: [GiphyDataObject]) -> UIImage? {
        
        let oneObject = giphyObjects.any
        
        let imageUrl = oneObject.image.url
        
        do {
            let data = try Data(contentsOf: imageUrl)
            return UIImage(data: data)
        }
        catch let ex {
            print("Failed to load Image from URL: \(imageUrl) : \(ex)")
            return nil
        }
    }
}

fileprivate struct GiphyImage {
    
    let url: URL
    let width: Int
    let height: Int
    let size: Int
    let mp4: URL?
    
    
    static func fromJson(json: NSDictionary) -> GiphyImage? {
        
        guard let urlString = json["url"] as? String,
              let url = URL(string: urlString),
              let widthString = json["width"] as? String, let width = Int(widthString),
              let heightString = json["height"] as? String, let height = Int(heightString),
              let sizeString = json["size"] as? String, let size = Int(sizeString)
        else {
            return nil
        }
        
        func extractMp4(fromJson json: NSDictionary) -> URL? {
            
            if let mp4 = json["mp4"] as? String {
                return URL(string: mp4)
            }
            
            return nil
        }
        
        let mp4 = extractMp4(fromJson: json)
        
        return GiphyImage(url: url, width: width, height: height, size: size, mp4: mp4)
    }
}

fileprivate struct GiphyDataObject {
    
    let type: String
    let id: String
    let slug: String
    let url: URL
    let source: URL
    let image: GiphyImage
    
    
    static func fromJson(json: NSDictionary) -> GiphyDataObject? {
        
        guard let type = json["type"] as? String,
              let id = json["id"] as? String,
              let slug = json["slug"] as? String,
              let urlString = json["url"] as? String, let url = URL(string: urlString),
              let sourceString = json["source"] as? String, let source = URL(string: sourceString),
              let imagesObject = json["images"] as? NSDictionary,
              let imageObject = imagesObject["fixed_height"] as? NSDictionary
        else {
            return nil
        }
        
        guard let giphyImage = GiphyImage.fromJson(json: imageObject)
        else {
            print("Could not parse Giphy Image")
            return nil
        }
        
        return GiphyDataObject(type: type, id: id, slug: slug, url: url, source: source, image: giphyImage)
    }
}


//MARK: Extensions
extension String {
    
    var urlEscaped: String? {
        
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.alphanumerics)
    }
}

extension Array {
    
    var any: Element {
        
        let randomIndex = Int.random(from: 0, to: self.count - 1)
        return self[randomIndex]
    }
}

extension NSArray {
    
    var notEmpty: Bool {
        return count > 0
    }
}

extension Int {
    
    static func random() -> Int {
        return Int(arc4random_uniform(1000))
    }
    
    static func random(from: Int, to: Int) -> Int {
        
        guard from < to else { return 0 }
        let diff = to - from
        
        let random = Int(arc4random_uniform(UInt32(diff)))
        let result = random + from
        
        if result < from {
            return from
        }
        
        if result > to {
            return to
        }
        
        return result
    }
}
