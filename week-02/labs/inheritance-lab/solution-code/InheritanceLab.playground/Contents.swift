//: Playground - noun: a place where people can play

import UIKit


class Animal {
    
    let name: String
    let weight: Int
    
    init(name: String, weight: Int) {
        self.name = name
        self.weight = weight
    }
    
    func makeNoise() {
        print("Making some noise")
    }
    
    func move() {
        print("Moving")
    }
    
    func breed() -> Animal {
        return self
    }
    
    func canMateWith(other: Animal) -> Bool {
        return true
    }
}

class Fish : Animal {
    
    var fins: Int
    
    init(name: String, weight: Int, fins: Int) {
        self.fins = fins
        super.init(name: name, weight: weight)
    }
    
    override func makeNoise() {
        print("Fish are silent")
    }
    
    override func move() {
        print("Swimming through the bottomless Oceans")
    }
    
    override func canMateWith(other: Animal) -> Bool {
        return other is Fish
    }
}

class Mammal: Animal {
    
    let bodyTemperature: Double
    
    init(name: String, weight: Int, bodyTemperature: Double) {
        self.bodyTemperature = bodyTemperature
        super.init(name: name, weight: weight)
    }
    
    override func canMateWith(other: Animal) -> Bool {
        return other is Mammal
    }
    
}

class Reptile: Animal {
    
    let scales: Int
    let bodyTemperature: Double
    
    init(name: String, weight: Int, scales: Int, bodyTemperature: Double) {
        self.bodyTemperature = bodyTemperature
        self.scales = scales
        super.init(name: name, weight: weight)
    }
    
    override func breed() -> Animal {
        return self
    }
    
    override func canMateWith(other: Animal) -> Bool {
        return other is Reptile
    }
}

class Dog: Mammal {
    let breed: String
    let furColor: UIColor
    
    init(name: String, weight: Int, bodyTemperature: Double, breed: String, furColor: UIColor) {
        self.breed = breed
        self.furColor = furColor
        super.init(name: name, weight: weight, bodyTemperature: bodyTemperature)
    }
    
    override func makeNoise() {
        print("Bark")
    }
    
    override func move() {
        print("Hop around on 4s")
    }
    
    override func canMateWith(other: Animal) -> Bool {
        return other is Dog
    }
}

class Snake: Reptile {
    let length: Int
    
    init(length: Int, name: String, weight: Int, scales: Int, bodyTemperature: Double) {
        self.length = length
        super.init(name: name, weight: weight, scales: scales, bodyTemperature: bodyTemperature)
    }
    
    override func canMateWith(other: Animal) -> Bool {
        return other is Snake
    }
}

class Human: Mammal {
    var hairColor: UIColor
    
    init(hairColor: UIColor, name: String, weight: Int, bodyTemperature: Double) {
        self.hairColor = hairColor
        super.init(name: name, weight: weight, bodyTemperature: bodyTemperature)
    }
    
    override func canMateWith(other: Animal) -> Bool {
        return other is Human
    }
}

let snake = Snake(length: 300, name: "Anaconda", weight: 40, scales: 1000, bodyTemperature: 10)

let fido = Dog(name: "Fido", weight: 30, bodyTemperature: 85, breed: "Husky", furColor: UIColor.white())

let person = Human(hairColor: UIColor.red(), name: "Wonder Woman", weight: 135, bodyTemperature: 97.8)

func sameFamily(animalOne: Animal, animalTwo: Animal) -> Bool {
    
    if animalOne is Reptile {
        return animalTwo is Reptile
    }
    
    if animalOne is Mammal {
        return animalTwo is Mammal
    }
    
    if animalOne is Fish {
        return animalTwo is Fish
    }
    
    return false
}

sameFamily(animalOne: snake, animalTwo: fido)
sameFamily(animalOne: fido, animalTwo: person)

fido.canMateWith(other: snake)
snake.canMateWith(other: snake)
