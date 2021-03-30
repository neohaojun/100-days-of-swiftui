//: [Previous](@previous)

import Foundation

// give nicely a default value of true
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

// now the function can be called in 2 ways
greet("Taylor")
greet("Taylor", nicely: false)

//: [Next](@next)
