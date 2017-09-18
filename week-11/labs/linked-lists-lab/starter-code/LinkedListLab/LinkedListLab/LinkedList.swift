//
//  LinkedList.swift
//  LinkedListsLab
//
//  Created by Wellington Moreno on 10/16/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation


class LinkedList<Element: Equatable>
{
    
    private var head: Node<Element>? = nil
    private var tail: Node<Element>? = nil
    
    private var numberOfElements = 0
    
    init()
    {
        
    }
    
    init(array: [Element])
    {
        
    }
    
    var isEmpty: Bool
    {
        return head == nil
    }
    
    var asArray: [Element]
    {
        var array = [Element]()
        
        return array
    }
    
    func count() -> Int
    {
        return numberOfElements
    }
    
    func contains(_ element: Element) -> Bool
    {
        return false
    }
    
    func append(element: Element)
    {
      
    }
    
    func appendAll(array: [Element])
    {
      
    }
    
    func prepend(element: Element)
    {
       
    }
    
    func reverse()
    {
      
    }
    
}
