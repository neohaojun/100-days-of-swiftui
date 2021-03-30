//: [Previous](@previous)

import Foundation

class Dog {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle: Dog {
    // this overrides the original function in the Dog class
    override func makeNoise() {
            print("Yip!")
        }
}

let poppy = Poodle()
poppy.makeNoise()

//: [Next](@next)
