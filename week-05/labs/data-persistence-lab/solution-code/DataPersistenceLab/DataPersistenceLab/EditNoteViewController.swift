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
    
    var onNoteEdited: ((Note) -> Void)?
    
    var note: Note!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if note == nil {
            print("Note is missing!")
            self.dismiss()
            return
        }
        
        textView.delegate = self
        textView.text = note.body
        
        if textView.text.isEmpty {
            self.textView.becomeFirstResponder()
        }
        
    }
    
    private func dismiss() {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}

//Text View Delegate Methods
extension EditNoteViewController : UITextViewDelegate {
    
    private var now: Date {
        return Date()
    }
    
    func textViewDidChange(_ textView: UITextView) {
        
        let newText = textView.text ?? ""
        
        note.body = newText
        note.timeLastEdited = now
        
        onNoteEdited?(note)
    }
}
