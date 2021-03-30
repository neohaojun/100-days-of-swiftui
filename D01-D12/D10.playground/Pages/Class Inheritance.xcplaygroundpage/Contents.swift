//: [Previous](@previous)

import Foundation

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// you can create a class based on an existing class
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//: [Next](@next)
