//: [Previous](@previous)

import Foundation

// we merely call print("x"), we dont print(message: "x")
print("hello!")

// get the same behaviour by using _ for your external parameter name
func greet(_ person: String) {
    print("Hello, \(person)!")
}

// call greet() without using the person parameter name
greet("Taylor")

//: [Next](@next)
