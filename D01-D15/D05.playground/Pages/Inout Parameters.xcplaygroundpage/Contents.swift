//: [Previous](@previous)

import Foundation

// inout allows you to change the value directly rather than returning a new one
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
// pass the parameter to doubleInPlace using an ampersand, &, before its name, which is an explicit recognition that you’re aware it is being used as inout
doubleInPlace(number: &myNum)

//: [Next](@next)
