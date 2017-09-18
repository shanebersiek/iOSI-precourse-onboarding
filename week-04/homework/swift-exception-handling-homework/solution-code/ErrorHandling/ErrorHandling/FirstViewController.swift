//
//  FirstViewController.swift
//  ErrorHandling
//
//  Created by Rudd Taylor on 8/22/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let session = URLSession.shared
        guard let url = URL(string: "http://reddit.com/.json") else { return }
        let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
            if let data = data {
                guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: AnyObject] else { return }
                guard let jsonData = json?["data"] as? [String: AnyObject] else { return }
                guard let firstStory = (jsonData["children"] as? [[String: AnyObject]])?.first else { return }
                guard let firstStoryData = firstStory["data"] as? [String: AnyObject] else { return }
                guard let firstStoryTitle = firstStoryData["title"] as? String else { return }
                DispatchQueue.main.async {
                    self.resultLabel.text = firstStoryTitle
                }
            } else if let error = error {
                DispatchQueue.main.async {
                    self.resultLabel.text = "Error: \(error.localizedDescription)"
                }
            }
        }) 
        task.resume()
    }
}

