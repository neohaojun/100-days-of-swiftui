//: [Previous](@previous)

import Foundation

// to make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting.
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

// no parameter labels when running closures!
driving("London")

//: [Next](@next)
