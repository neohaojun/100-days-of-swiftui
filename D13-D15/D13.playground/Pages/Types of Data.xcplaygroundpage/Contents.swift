//: [Previous](@previous)

import Foundation

// creating a string, which is just a line of text
var name: String
name = "Tim McGraw"

// creating an integer, a number
var age: Int
age = 25

// creating a float
var longitude: Float
// all of these have the same number of digits in the right column because it has limited space to store your number
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

// creating a double
var latitude: Double
// changing it to a double, though, will cause Swift to print the correct number out every time - this is because doubles have twice the accuracy of a float
latitude = 36.166667
latitude = -86.783333
latitude = -186.783333
latitude = -1286.783333
latitude = -12386.783333
latitude = -123486.783333
latitude = -1234586.783333
// but that does not mean doubles do not have limits - if you were to try a massive number like 123456789.123456789 you would see it gets cut down to 123456789.1234568

// booleans
var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

// use type annotations wisely - this is preferred to
var name2 = "Tim McGraw"
// this
var name3: String
name = "Tim McGraw"

// it is possible to specify a data type and provide a value at the same time
var name4: String = "Tim McGraw"

//: [Next](@next)
