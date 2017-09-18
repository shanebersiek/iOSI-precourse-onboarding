//: Playground - noun: a place where people can play

import XCTest

// Objectives:
// * Create a simple instance of a pre-defined object, set a property on it, then print it. You should then be able to use a static method on a class to configure the object.
// * Create a class of your own with a set of properties, create an instance of that class, then print it.
// * Bonus: Create a struct with the same properties as the class, and then demonstrate the differences between 'pass by reference' objects and 'pass by value' structs.

// In this homework we'll encounter classes and objects, and learn how to use them

// Here's a class, a dog with a name
class Dog {
  fileprivate var name: String
  fileprivate var barkSound = "bark!"
  init(name: String) {
    self.name = name
  }
  
  func bark() {
    print(self.barkSound)
  }
  
  static func configureDog(_ dog: Dog, withName name: String, barkSound: String? = nil) {
    dog.name = name
    if let barkSound = barkSound {
      dog.barkSound = barkSound
    }
  }
}

// MARK: - Required

// TODO: Create an instance of Dog, call the variable 'fido'. The dog's name should be 'Fido'

// TODO: Create an instance of Dog, call the variable 'ein'. The dog's name should be 'Spike'

// TODO: Use the configureDog function to make ein's name 'Ein'. Do not change its barkSound.


// TODO: Create an instance of Dog, call the variable 'potato'. The dog's name should be 'Potato'

// TODO: Use the configureDog function to make potato's name 'Taters' and its bark sound 'grr!'


// TODO: Create your own class, "Chihuahua", that is a subclass of dog. Its default barkSound should be 'yip!' instead of 'bark!'. It should also have an integer variable called 'barkCount'. barkCount should start at 0, and increase every time bark() is called

// TODO: Create an instance of Chihuahua, call the variable 'rover'. The dog's name should be "Rover".

// TODO: Call bark() on it once

// MARK: - Bonus
// TODO: Create a struct called StructDog. It should have a name and a barkSound, mimicking Dog.

// TODO: Create a variable called firstStruct, of type StructDog. Set its name and barkSound equal to 'firstStruct'.

// TODO: Create a variable called secondStruct, set it equal to secondStruct

// TODO: Set secondStruct's name and barkSound to 'secondStruct'

// TODO: Create a variable called firstObject, of type Dog. Set its name equal to 'firstObject'.

// TODO: Create a variable called secondObject, set it equal to secondObject

// TODO: Set secondObject's name and barkSound to 'secondObject'

// TODO: Take a look at the below unit tests, see what just happened? This is the difference between a 'pass by value' struct and a 'pass by reference' class.

// Uncomment the below tests to verify your work.
class MyTests : XCTestCase {
  func tests() {
    //        XCTAssertEqual(fido.name, "Fido")
    //        XCTAssertEqual(fido.barkSound, "bark!")
    //        XCTAssertEqual(ein.name, "Ein")
    //        XCTAssertEqual(ein.barkSound, "bark!")
    //        XCTAssertEqual(potato.name, "Taters")
    //        XCTAssertEqual(potato.barkSound, "grr!")
    //        let chihuahua = Chihuahua(name: "name")
    //        XCTAssertEqual(chihuahua.barkSound, "yip!")
    //        XCTAssertEqual(chihuahua.barkCount, 0)
    //        chihuahua.bark()
    //        XCTAssertEqual(chihuahua.barkCount, 1)
    //        XCTAssertEqual(rover.name, "Rover")
    //        XCTAssertEqual(rover.barkCount, 1)
    //         Bonus:
    //        XCTAssertEqual(firstStruct.name, "firstStruct")
    //        XCTAssertEqual(secondStruct.name, "secondStruct")
    //        XCTAssertEqual(firstObject.name, "secondObject")
    //        XCTAssertEqual(secondObject.name, "secondObject")
  }
}

struct TestRunner {
  func runTests(testClass:AnyClass) {
    let tests = testClass as! XCTestCase.Type
    let testSuite = tests.defaultTestSuite()
    testSuite.run()
    let run = testSuite.testRun as! XCTestSuiteRun
    
    print("\(run.totalFailureCount) failures")
  }
}

TestRunner().runTests(testClass: MyTests.self)
