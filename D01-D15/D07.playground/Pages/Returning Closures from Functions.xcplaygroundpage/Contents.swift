//: [Previous](@previous)

import Foundation

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

// call the return value from travel() directly is technically allowed, but not recommended
let result2 = travel()("London")

//: [Next](@next)
