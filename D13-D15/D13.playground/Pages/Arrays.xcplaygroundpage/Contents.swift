//: [Previous](@previous)

import Foundation

var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]

type(of: songs)

// songs array with type annotation
var annotatedSongs: [String] = ["Shake it Off", "You Belong with Me", "Back to December"]

// any value can be stored within the array
var anySongs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

// creating empty arrays
var emptySongs1: [String] = []
var emptySongs2 = [String]()

var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
// merging arrays
var both = songs + songs2
both += ["Everything has Changed"]

//: [Next](@next)
