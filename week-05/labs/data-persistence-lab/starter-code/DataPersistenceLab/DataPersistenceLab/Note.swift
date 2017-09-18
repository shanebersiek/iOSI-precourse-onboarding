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
    
    required init?(coder aDecoder: NSCoder) {
        //Decode the body
        //Decode the title
        //Decode the timeCreated
        //Decode the timeLastEdited
    }
    
    func encode(with coder: NSCoder) {
        //Implement this
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

