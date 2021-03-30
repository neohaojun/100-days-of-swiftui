//: [Previous](@previous)

import Foundation

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

// Swift’s arrays and sets both conform to a protocol called Collection, so we can write an extension to that protocol to add a summarize() method to print the collection neatly
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

//: [Next](@next)
