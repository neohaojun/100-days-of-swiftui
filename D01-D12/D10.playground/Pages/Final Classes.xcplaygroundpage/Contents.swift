//: [Previous](@previous)

import Foundation

// no other classes can inherit from final classes
final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//: [Next](@next)
