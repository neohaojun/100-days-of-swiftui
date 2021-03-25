//: [Previous](@previous)

import Foundation

// basic driving closure
let driving = {
    print("I'm driving in my car")
}

// travel() function that accepts different kinds of traveling actions
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

// now call travel() using our driving closure, like this:
travel(action: driving)

//: [Next](@next)
