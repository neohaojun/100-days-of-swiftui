//: [Previous](@previous)

import Foundation

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    // if pet can be a dog
    if let dog = pet as? Dog {
        // bark
        dog.makeNoise()
    }
}

//: [Next](@next)
