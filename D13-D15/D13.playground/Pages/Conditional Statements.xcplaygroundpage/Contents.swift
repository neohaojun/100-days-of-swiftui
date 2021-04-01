//: [Previous](@previous)

import Foundation

var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}

var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

// looking for the opposite
if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}

//: [Next](@next)
