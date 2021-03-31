//: [Previous](@previous)

import Foundation

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

// with nil coalescing we can provide a default value of “Anonymous” like this:
let user = username(for: 15) ?? "Anonymous"

//: [Next](@next)
