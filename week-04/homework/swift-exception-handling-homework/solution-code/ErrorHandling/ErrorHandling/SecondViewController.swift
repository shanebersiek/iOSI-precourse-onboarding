//
//  SecondViewController.swift
//  ErrorHandling
//
//  Created by Rudd Taylor on 8/22/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidAppear(_ animated: Bool) {
        let session = URLSession.shared
        guard let url = URL(string: "http://reddit.com/") else { return }
        let task = session.dataTask(with: url, completionHandler: { (data, response, errror) in
            guard let data = data else { return }
            do {
                guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: AnyObject] else { return }
                guard let jsonData = json["data"] as? [String: AnyObject] else { return }
                guard let firstStory = (jsonData["children"] as? [[String: AnyObject]])?.first else { return }
                guard let firstStoryData = firstStory["data"] as? [String: AnyObject] else { return }
                guard let firstStoryTitle = firstStoryData["title"] as? String else { return }
                DispatchQueue.main.async {
                    self.resultLabel.text = firstStoryTitle
                }
            } catch {
                DispatchQueue.main.async {
                    self.resultLabel.text = "Error parsing JSON"
                }
            }
        }) 
        task.resume()
    }
}

