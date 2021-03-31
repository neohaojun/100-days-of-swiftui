//: [Previous](@previous)

import Foundation

var name: String? = nil

// unwrapping before using
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//: [Next](@next)
