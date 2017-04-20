//
//  AddressBookClient.swift
//  iOSVersionsLab
//
//  Created by Ezekiel Abuhoff on 7/25/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation
import Contacts

@available(iOS 9, *)
class ContactStoreClient {

    static let contactStore = CNContactStore()
    
    static func seekAuthorization(withCompletion completion: ([String]) -> Void) {
        contactStore.requestAccess(for: .contacts){succeeded, error in
            guard error == nil && succeeded else { return }
            
            completion(getNames())
        }
    }
    
    static func getAuthorizationStatus() -> Bool {
        let authorzationStatus = CNContactStore.authorizationStatus(for: CNEntityType.contacts)
        switch authorzationStatus {
        case .authorized:
            return true
        default:
            return false
        }
    }
    
    static func getNames() -> [String] {
        let contactsArray = getContacts()
        let namesArray = contactsArray.map({ (contact) -> String in
            return contact.givenName
        })
        return namesArray
    }
    
    static func getContacts() -> [CNContact] {
        let keysToFetch = [
            CNContactFormatter.descriptorForRequiredKeys(for: .fullName),
            CNContactEmailAddressesKey,
            CNContactPhoneNumbersKey,
            CNContactImageDataAvailableKey,
            CNContactThumbnailImageDataKey]
        
        var allContainers: [CNContainer] = []
        do {
            allContainers = try contactStore.containers(matching: nil)
        } catch {
            print("Error fetching containers")
        }
        
        var results: [CNContact] = []
        
        for container in allContainers {
            let fetchPredicate = CNContact.predicateForContactsInContainer(withIdentifier: container.identifier)
            
            do {
                let containerResults = try contactStore.unifiedContacts(matching: fetchPredicate, keysToFetch: keysToFetch)
                results.append(contentsOf: containerResults)
            } catch {
                print("Error fetching results for container")
            }
        }
        
        return results
    }
}
