//: [Previous](@previous)

import Foundation

let result = "failure" // representing failure using a string

// what if someone uses different naming ???
let result2 = "failed"
let result3 = "fail"

// use an enum to make life easier
enum Result {
    case success
    case failure
}
let result4 = Result.failure // voila! stops you from accidentally using different strings each time

//: [Next](@next)
