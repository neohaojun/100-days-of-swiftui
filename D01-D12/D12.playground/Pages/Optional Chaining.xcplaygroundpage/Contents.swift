//: [Previous](@previous)

import Foundation

// array of names
let names = ["John", "Paul", "George", "Ringo"]

// the question mark after first is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.
let beatle = names.first?.uppercased()

//: [Next](@next)
