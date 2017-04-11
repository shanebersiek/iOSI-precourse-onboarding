//
//  Node.swift
//  LinkedListsLab
//
//  Created by Wellington Moreno on 10/16/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import Foundation


class Node<Element: Equatable>: CustomStringConvertible
{
    var value: Element
    var next: Node? = nil
    
    init(value: Element)
    {
        self.value = value
    }
    
    var description: String
    {
        return "Node: \(value)"
    }
}
