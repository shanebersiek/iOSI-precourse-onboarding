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
        appendAll(array: array)
    }
    
    var isEmpty: Bool
    {
        return head == nil
    }
    
    var asArray: [Element]
    {
        var array = [Element]()
        
        var current = head
        while current != nil
        {
            
            if let element = current?.value
            {
                array.append(element)
            }
            
            current = current?.next
        }
        
        return array
    }
    
    func count() -> Int
    {
        return numberOfElements
    }
    
    func contains(_ element: Element) -> Bool
    {
        var next = head
        
        while next != nil
        {
            if let next = next, next.value == element
            {
                return true
            }
            
            next = next?.next
        }
        
        return false
    }
    
    func append(element: Element)
    {
        if isEmpty
        {
            head = Node(value: element)
            head?.next = nil
            tail = head
        }
        else
        {
            let newNode = Node(value: element)
            tail?.next = newNode
            tail = newNode
        }
        
        numberOfElements += 1
    }
    
    func appendAll(array: [Element])
    {
        for element in array
        {
            append(element: element)
        }
    }
    
    func prepend(element: Element)
    {
        if isEmpty
        {
            head = Node(value: element)
            head?.next = nil
            tail = head
        }
        else
        {
            let oldHead = head
            
            let newNode = Node(value: element)
            head = newNode
            head?.next = oldHead
        }
        
        numberOfElements += 1
    }
    
    func reverse()
    {
        if head == nil
        {
            return
        }
        
        if numberOfElements == 1
        {
            return
        }
        
//        guard let head = head else { return self }
        
        var previous: Node<Element>? = nil
        var current = head
        var next = head?.next
        
        while next != nil
        {
            current?.next = previous
            
            //Advance each pointer
            previous = current
            current = next 
            next = next?.next
        }
        
        //Connect the last piece
        current?.next = previous
        
        self.tail = head
        self.head = current
    }
    
}
