//
//  MasterViewController.swift
//  PlatformIntegration
//
//  Created by Rudd Taylor on 9/6/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIViewControllerPreviewingDelegate {
    var previewingContext: UIViewControllerPreviewing?
    var detailViewController: DetailViewController? = nil
    var pictures = [Picture](repeating: Picture(image: UIImage(named: "image")!), count: 1)


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.leftBarButtonItem = self.editButtonItem

        if self.traitCollection.forceTouchCapability == .available {
            self.previewingContext = self.registerForPreviewing(with: self, sourceView: self.view)
        }
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        self.navigationItem.rightBarButtonItem = addButton
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }
    
    func insertNewObject(_ sender: AnyObject) {
        let imageController = UIImagePickerController()
        imageController.delegate = self
        imageController.sourceType = .photoLibrary
        self.present(imageController, animated: true, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }
    
    // MARK: - UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        self.dismiss(animated: true) {
            self.pictures.insert(Picture(image: image), at: 0)
            let indexPath = IndexPath(row: 0, section: 0)
            self.tableView.insertRows(at: [indexPath], with: .automatic)
        }
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let object = pictures[indexPath.row]
                let controller = (segue.destination as! UINavigationController).topViewController as? DetailViewController
                controller?.detailItem = object
                controller?.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
                controller?.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    // MARK: - Previewing
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
        guard self.tableView.frame.contains(location) else { return nil }
        var location = location
        location.y -= self.tableView.frame.origin.y
        guard let indexPath = self.tableView.indexPathForRow(at: location),
            let cell = tableView.cellForRow(at: indexPath) else { return nil }
        let previewDetail = self.pictures[indexPath.row]
        guard let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detail") as? DetailViewController else { return nil }
        detailViewController.detailItem = previewDetail
        detailViewController.preferredContentSize = CGSize(width: 0.0, height: 400)
        
        // Set the source rect to the cell frame, so surrounding elements are blurred.
        previewingContext.sourceRect = cell.frame
        return detailViewController
    }
    
    /// Present the view controller for the "Pop" action.
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        // Reuse the "Peek" view controller for presentation.
        self.show(viewControllerToCommit, sender: self)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        guard self.traitCollection.forceTouchCapability == .available else {
            if let previewingContext = self.previewingContext {
                self.unregisterForPreviewing(withContext: previewingContext)
            }
            return
        }
        self.previewingContext = self.registerForPreviewing(with: self, sourceView: self.view)
    }
    
    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pictures.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let picture = self.pictures[indexPath.row]
        cell.textLabel?.text = picture.createdAt.description
        cell.imageView?.image = picture.image
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            pictures.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
}

