//: [Previous](@previous)

import Foundation

// parameter name is number
func square(number: Int) -> Int {
    return number * number
}

// using number to refer to the parameter when calling the function
let result = square(number: 8)

// 2 names for parameter ???????
// externally, it's called 'to'. internally, it's called 'name'
func sayHello(to name: String) {
    // gives the variable a sensible name within the function
    print("Hello, \(name)!")
}

// calling the function reads naturally
sayHello(to: "Taylor")

//: [Next](@next)
