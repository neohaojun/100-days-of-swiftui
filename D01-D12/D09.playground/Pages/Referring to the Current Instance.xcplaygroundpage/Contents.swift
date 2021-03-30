//: [Previous](@previous)

import Foundation

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        // self helps you to differentiate between the property and parameter - self.name refers to the property, name is the parameter
        self.name = name
    }
}

//: [Next](@next)
