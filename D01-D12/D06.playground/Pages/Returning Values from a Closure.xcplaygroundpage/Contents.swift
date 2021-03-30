//: [Previous](@previous)

import Foundation

// original driving closure
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

// closure that returns a string
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// we can now run the closure and print its return value
let message = drivingWithReturn("London")
print(message)

//: [Next](@next)
