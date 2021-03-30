//: [Previous](@previous)

import Foundation

// travel() function that accepts a closure as its only parameter, and that closure in turn accepts a string and returns a string:
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//: [Next](@next)
