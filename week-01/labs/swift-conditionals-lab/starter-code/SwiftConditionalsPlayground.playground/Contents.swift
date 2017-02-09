//: Conditionals Lab - Practice using if, else, and switch in Swift.

import UIKit

//MARK: Random Function
//Use this to create your integers
func randomInteger(from: Int, to: Int) -> Int {
    
    let difference = to - from
    
    let random = Int(arc4random_uniform(UInt32(difference)))
    let result = from + random
    
    if result < from {
        return from
    }
    else if result > to {
        return to
    }
    else {
        return result
    }
}
