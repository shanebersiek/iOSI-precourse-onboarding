//
//  AddressBook.swift
//  iOSVersionsLab
//
//  Created by Richard Ash on 4/20/17.
//  Copyright © 2017 General Assembly. All rights reserved.
//

import Foundation
import AddressBook
import Contacts

@available(iOS 9.0, *)
class Contacts {
  func fetchContacts(completion: @escaping ([CNContact]) -> Void) {
    let store = CNContactStore()
    store.requestAccess(for: .contacts) { (authorized, error) in
      if authorized {
        let keysToFetch = [CNContactGivenNameKey, CNContactPhoneNumbersKey]
        guard let allContainers = try? store.containers(matching: nil) else { return }
        var contacts: [CNContact] = []
        for container in allContainers {
          let fetchRequest = CNContact.predicateForContactsInContainer(withIdentifier: container.identifier)
          guard let fetchedContacts = try? store.unifiedContacts(matching: fetchRequest, keysToFetch: keysToFetch as [CNKeyDescriptor]) else { continue }
          
          contacts.append(contentsOf: fetchedContacts)
        }
        
        completion(contacts)
      }
    }
  }
}


class AddressBook {
  
  
  func fetchContacts(completion: @escaping ([String]) -> Void) {
    let book = ABAddressBookCreate() as ABAddressBook
    ABAddressBookRequestAccessWithCompletion(book) { (authorized, error) in
      if authorized {
        let allPeople = ABAddressBookCopyArrayOfAllPeople(book) as! CFArray
        let count = ABAddressBookGetPersonCount(book)
        
        var names: [String] = []
        for i in 0..<count {
          guard let person = CFArrayGetValueAtIndex(allPeople, i) as? ABRecord else { continue }
          
          guard let firstName = ABRecordCopyValue(person, kABPersonFirstNameProperty) as? String else { continue }
          names.append(firstName)
        }
        completion(names)
      }
    }
  }
}
