//
//  AddressBookClient.swift
//  iOSVersionsLab
//
//  Created by Ezekiel Abuhoff on 7/25/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import AddressBook

class AddressBookClient {
    
    let addressBook: ABAddressBook = ABAddressBookCreateWithOptions(nil, nil).takeRetainedValue()
    
    static func seekAuthorization(withCompletion completion: ([String]) -> Void) {
        let addressBookRef = ABAddressBookCreateWithOptions(nil, nil).takeRetainedValue()
        ABAddressBookRequestAccessWithCompletion(addressBookRef) { (granted, error) in
            guard error == nil && granted else { return }
            
            completion(getNames())
        }
    }
    
    static func getAuthorizationStatus() -> Bool {
        let authStatus = ABAddressBookGetAuthorizationStatus()
        switch authStatus {
        case .authorized:
            return true
        case .denied:
            return false
        case .notDetermined:
            return false
        default:
            print("Unexpected address book authorization status")
            return false
        }
    }
    
    static func getNames() -> [String] {
        let contactsArray = getContacts()
        let namesArray = contactsArray.map({ (contact) -> String in
            guard let name = contact.givenName! else { return "" }
            return name
        })
        return namesArray
    }
    
    static func getContacts() -> NSArray {
        var error: Unmanaged<CFError>?
        guard let addressBook: ABAddressBook? = ABAddressBookCreateWithOptions(nil, &error)?.takeRetainedValue() else {
            print(error?.takeRetainedValue())
            return []
        }
        
        if let contacts = ABAddressBookCopyArrayOfAllPeople(addressBook)?.takeRetainedValue() as? NSArray {
            return contacts
        }
        return []
    }
}
