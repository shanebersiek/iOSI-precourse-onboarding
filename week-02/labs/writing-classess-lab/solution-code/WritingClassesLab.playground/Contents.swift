//: Playground - noun: a place where people can play

import UIKit


//MARK: Person
class Person {
    
    var firstName: String
    var middleName: String
    var lastName: String
    
    var fullname: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
    
    
    let birthYear: Int
    let birthPlace: String
    var age: Int {
        let now = Date()
        let calendar = Calendar.current
        let currentYear = calendar.component(.year, from: now)
        return currentYear - birthYear
    }
    
    var hairColor: UIColor
    
    var personalWebsite: String
    
    var description: String {
        return "\(firstName) is \(age) and was born in \(birthPlace) on \(birthYear)"
    }
    
    init(firstName: String, middleName: String, lastName: String,
         birthYear: Int, birthPlace: String, hairColor: UIColor, personalWebsite: String) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
        self.birthYear = birthYear
        self.birthPlace = birthPlace
        self.hairColor = hairColor
        self.personalWebsite = personalWebsite
    }
    
    
    func sayHello() {
        print("Hello, my name is \(firstName) \(lastName). I am \(age) years old")
    }
}

let alexander = Person(firstName: "Alexander", middleName: "Aris", lastName: "Ramirez", birthYear: 2009, birthPlace: "Los Angeles", hairColor: UIColor.yellow(), personalWebsite: "")

print(alexander.description)
alexander.sayHello()

let caesar = Person(firstName: "Gaius", middleName: "Julius", lastName: "Caesar", birthYear: -100, birthPlace: "Rome", hairColor: UIColor.lightGray(), personalWebsite: "julius.rome")

print(caesar.description)
caesar.sayHello()




//MARK: User Class

extension String {
    
    func removeCharactersAtEnd(numberOfCharacters number: Int) -> String? {
        
        guard number <= self.characters.count else { return nil }
        
        let endIndex = self.index(self.endIndex, offsetBy: -number)
        return self.substring(to: endIndex)
    }
}

class User {
    
    let username: String
    
    private var encryptedPassword: String = ""
    var password: String  {
        set {
            self.encryptedPassword = newValue + "1234"
        }
        get {
            return self.encryptedPassword.removeCharactersAtEnd(numberOfCharacters: 4) ?? ""
        }
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    var description: String {
        return "Username: \(username), Password: \(password)"
    }
}

//Create some users
let sirWellington = User(username: "SirWellington", password: "GeneralAssembly!")
print(sirWellington.description)

let jay = User(username: "MrNappy", password: "GeneralChaos!")
print(jay.description)

//Check Jay's Type
jay is Person
jay is User

func samePassword(user1: User, user2: User) -> Bool {
    return user1.password == user2.password
}

func sameYear(person1: Person, person2: Person) {
    
    if person1.birthYear == person2.birthYear {
        print("\(person1.firstName) and \(person2.firstName) have the same Birth Year")
    }
}

let shilpa = Person(firstName: "Shilpa", middleName: "", lastName: "Sikachi", birthYear: 2009, birthPlace: "Mumbai", hairColor: UIColor.black(), personalWebsite: "")

//Check if they have the same birth year
sameYear(person1: shilpa, person2: alexander)
sameYear(person1: alexander, person2: caesar)
