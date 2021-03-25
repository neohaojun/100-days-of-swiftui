//: [Previous](@previous)

import Foundation

// basic driving closure
let driving = {
    print("I'm driving in my car")
}

// travel function
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

// since its last parameter is a closure, we can call travel() using trailing closure syntax like this:
travel() {
    print("I'm driving in my car")
}

// in fact, because there aren’t any other parameters, we can eliminate the parentheses entirely:
travel {
    print("I'm driving in my car")
}

travel {
    driving()
}

//: [Next](@next)
