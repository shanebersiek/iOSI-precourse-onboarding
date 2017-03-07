//
//  EditNoteViewController.swift
//  DataPersistenceLab
//
//  Created by Wellington Moreno on 7/25/16.
//  Copyright © 2016 General Assembly All rights reserved.
//

import Foundation
import UIKit

class EditNoteViewController : UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    //Closure is called everytime the note is edited
    var onNoteEdited: ((Note) -> Void)?
    
    var note: Note!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if note == nil {
            print("Note is missing!")
            self.dismiss()
            return
        }
        
        textView.text = note.body
        
        if textView.text.isEmpty {
            self.textView.becomeFirstResponder()
        }
        
    }
    
    private func dismiss() {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
