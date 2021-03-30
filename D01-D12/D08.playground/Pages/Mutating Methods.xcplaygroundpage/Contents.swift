//: [Previous](@previous)

import Foundation

struct Person {
    var name: String
    
    // when you want to change a property inside a method, you need to mark it using the mutating keyword
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

//: [Next](@next)
