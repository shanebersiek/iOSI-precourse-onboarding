//
//  NoteListViewController.swift
//  DataPersistenceLab
//
//  Created by Wellington Moreno on 7/25/16.
//  Copyright © 2016 General Assembly All rights reserved.
//

import Foundation
import UIKit

class NoteListViewController : UITableViewController {
    
    fileprivate var notes: [Note] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
   
}

//MARK: Actions
extension NoteListViewController {
    
    @IBAction func onEdit(_ sender: AnyObject) {
        
        let newNote = Note(body: "")
        add(note: newNote)
        
        self.go(toNote: newNote)
    }
    
    private func add(note: Note) {
        
        self.notes.prepend(value: note)
        
        let path = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [path], with: .automatic)
    }
    
    private func findIndex(of note: Note) -> Int? {
        return notes.index(where: { $0 == note })
    }
}

//MARK: Segues 
extension NoteListViewController {
    
    fileprivate func go(toNote note: Note) {
        self.performSegue(withIdentifier: "ToNote", sender: note)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let editController = segue.destination as? EditNoteViewController
        else { return }

    }
}

//MARK: Table View Methods
extension NoteListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        guard row >= 0 && row < notes.count,
              let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as? NoteCell
        else {
            return UITableViewCell()
        }
        
        let note = notes[row]
        
        cell.noteView?.text = note.body
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let delete = UITableViewRowAction(style: .default, title: "Delete") { action, path in
            
            //Implement me
        }
        
        return [delete]
    }
}

//MARK: Table Cell
class NoteCell: UITableViewCell {
    
    @IBOutlet weak var noteView: UILabel!
    @IBOutlet weak var arrowImage: UIImageView!
    
}
