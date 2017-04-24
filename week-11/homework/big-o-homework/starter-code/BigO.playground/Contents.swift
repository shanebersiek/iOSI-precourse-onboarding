//: Playground - noun: a place where people can play

import XCTest

// The runtime of the below function is:
func search(forValue value: Int, inArray array: Array<Int>) -> Bool {
        for arrayValue in array {
        if value == arrayValue {
            return true
        }
    }
    return false
}

// The runtime of the below function is:
func getElementAtIndex(index: Int, inArray array: Array<Int>) -> Int {
    return array[index]
}

// The runtime of the below function is:
func printCombos(inArray array: Array<Int>) {
    for i in array {
        for j in array {
            print("\(i)\(j)")
        }
    }
}

class Node {
    init(value: Int) {
        self.value = value
    }
    var value: Int
    var next: Node?
}

class NodeList {
    var firstNode: Node?
    
    // The runtime of the below function is:
    func append(node: Node, toNode: Node? = nil) {
        if self.firstNode == nil {
            self.firstNode = node
        } else if self.firstNode?.next == nil {
            self.firstNode?.next = nil
        } else if let n = self.firstNode?.next {
            append(node, toNode: n)
        }
    }
}

// The runtime of the below function is:
func mergeSortedArray(array: Array<Int>) -> Array<Int> {guard array.count > 1 else { return array }
    func merge(left: Array<Int>, right: Array<Int>) -> Array<Int> {
        var mergedList = Array<Int>()
        mergedList.reserveCapacity(left.count + right.count)
        var leftIndex = 0
        var rightIndex = 0
        for _ in 0..<(left.count + right.count) {
            if leftIndex < left.count && (rightIndex >= right.count || left[leftIndex] < right[rightIndex]) {
                mergedList.append(left[leftIndex])
                leftIndex += 1
            } else {
                mergedList.append(right[rightIndex])
                rightIndex += 1
            }
        }
        return mergedList
    }
    let middleIndex = array.count/2
    let leftSide = Array(array.prefix(middleIndex))
    let rightSide = Array(array.suffix(array.count - leftSide.count))
    let left = mergeSortedArray(leftSide)
    let right = mergeSortedArray(rightSide)
    
    return merge(left, right: right)
}


// TODO: improve the runtime of this function from O(n^2) to o(nlogn) in the manner of your choosing.
func a(inout array: [Int]) -> [Int] {
    for i in 0..<array.count {
        let valueToInsert = array[i]
        var holeIndex = i
        while holeIndex > 0 && valueToInsert < array[holeIndex - 1] {
            array[holeIndex] = array[holeIndex - 1]
            holeIndex -= 1
        }
        array[holeIndex] = valueToInsert
    }
    return array
}
