//: [Previous](@previous)

import Foundation

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        // even though the counter variable is created inside travel(), it gets captured by the closure so it will still remain alive for that closure.
        counter += 1
    }
}

// the counter will go up and up
result("London")
result("London")
result("London")

//: [Next](@next)
