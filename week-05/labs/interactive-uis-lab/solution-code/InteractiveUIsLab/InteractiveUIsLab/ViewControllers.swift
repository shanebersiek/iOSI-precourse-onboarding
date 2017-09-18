//
//  ViewController.swift
//  InteractiveUIsLab
//
//  Created by Wellington Moreno on 7/21/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class GiphyViewController: UIViewController {

    @IBOutlet weak var gifImage: UIImageView!
    @IBOutlet weak var searchBar: UISearchBar!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        onClear(self)
    }
 
    fileprivate func enableNetworkIndicator() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    fileprivate func disableNetworkIndicator() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
}

//MARK: Actions
extension GiphyViewController {
    
    @IBAction func onClear(_ sender: AnyObject) {
        gifImage?.image = nil
        searchBar?.text = nil
    }
    
    
    @IBAction func onShare(_ sender: AnyObject) {
        //Create Activity View Controller
        
        guard let image = gifImage?.image else { return }
        
        let share = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(share, animated: true, completion: nil)
    }
    
}

//MARK: Search Bar Actions
extension GiphyViewController : UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        guard let term = searchBar.text , !term.isEmpty
        else { return }
        
        enableNetworkIndicator()
        Giphy.searchForImage(withTerm: term) { image in
            
            self.disableNetworkIndicator()
            self.gifImage?.image = image
        }
    }
}

