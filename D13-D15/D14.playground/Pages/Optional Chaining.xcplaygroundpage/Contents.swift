//: [Previous](@previous)

import Foundation

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

// example of uppercasing a string
let str = "Hello world"
print(str.uppercased())

// question mark is the optional chaining: everything after the question mark will only be run if everything before the question mark has a value
let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album!)")

// nil coalescing
let album2 = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album2)")

//: [Next](@next)
