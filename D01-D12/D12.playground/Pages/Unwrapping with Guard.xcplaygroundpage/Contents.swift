//: [Previous](@previous)

import Foundation

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    // optionals unwrapped using guard let stay around after the guard finishes
    print("Hello, \(unwrapped)!")
}

//: [Next](@next)
