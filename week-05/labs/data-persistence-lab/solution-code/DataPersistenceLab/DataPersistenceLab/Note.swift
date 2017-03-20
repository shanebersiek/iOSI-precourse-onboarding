//
//  Note.swift
//  DataPersistenceLab
//
//  Created by Wellington Moreno on 7/25/16.
//  Copyright © 2016 General Assembly All rights reserved.
//

import Foundation


class Note : NSObject, NSCoding {
    
    var body: String
    var title: String
    let timeCreated: Date
    var timeLastEdited: Date
    
    init(body: String, title: String, timeCreated: Date = Date(), timeLastEdited: Date) {
        self.body = body
        self.title = title
        self.timeCreated = timeCreated
        self.timeLastEdited = timeLastEdited
    }
    
    convenience init(body: String, title: String) {
        let now = Date()
        self.init(body: body, title: title, timeCreated: now, timeLastEdited: now)
    }
    
    convenience init(body: String) {
        
        let title: String
        
        if body.characters.count <= 10 {
            title = body
        }
        else {
            
            let endIndex = body.index(body.startIndex, offsetBy: 10)
            title = body.substring(to: endIndex)
        }
        
        self.init(body: body, title: title)
        
    }
    
    required init?(coder unarchiver: NSCoder) {
        
        guard let body = unarchiver.decodeObject(forKey: "body") as? String,
              let title = unarchiver.decodeObject(forKey: "title") as? String,
              let timeCreated = unarchiver.decodeObject(forKey: "timeCreated") as? Date,
              let timeLastEdited = unarchiver.decodeObject(forKey: "timeLastEdited") as? Date
        else { return nil }

        self.body = body
        self.title = title
        self.timeCreated = timeCreated
        self.timeLastEdited = timeLastEdited
    }
    
    func encode(with coder: NSCoder) {
        
        coder.encode(self.body, forKey: "body")
        coder.encode(self.title, forKey: "title")
        coder.encode(self.timeCreated, forKey: "timeCreated")
        coder.encode(self.timeLastEdited, forKey: "timeLastEdited")
    }
    
    var asData: Data {
        return NSKeyedArchiver.archivedData(withRootObject: self)
    }
    
    static func fromData(data: Data) -> Note? {
        return NSKeyedUnarchiver.unarchiveObject(with: data) as? Note
    }
 
}

//MARK: Note Equality
extension Note  {
    
    func createdAtTheSameTime(as note: Note) -> Bool {
        return note.timeCreated == self.timeCreated
    }
}

func ==(lhs: Note, rhs: Note) -> Bool {
    return lhs.body == rhs.body &&
        lhs.title == rhs.title &&
        lhs.timeCreated == rhs.timeCreated &&
        lhs.timeLastEdited == rhs.timeLastEdited
}

//MARK: Functions to save a group of notes
extension Note {
    
    private static var notesKey: String {
        return "com.ga.notes"
    }
    
    private static var userDefaults: UserDefaults {
        return UserDefaults.standard
    }
    
    static func saveNotes(notes: [Note]) {
        
        let nsArray = notes as NSArray
        let data = NSKeyedArchiver.archivedData(withRootObject: nsArray)
        
        userDefaults.set(data, forKey: notesKey)
    }
    
    static func loadNotes() -> [Note] {
        
        guard let data = userDefaults.data(forKey: notesKey)
        else {
            print("Notes not found in User Defaults")
            return []
        }
        
        guard let array = NSKeyedUnarchiver.unarchiveObject(with: data) as? NSArray
        else {
            print("Could not decode data found in User Defaults as an Array")
            return []
        }
        
        if let notes = array as? [Note] {
            return notes
        }
        else {
            print("Could not decode array as [Note")
            return []
        }
    }
}
