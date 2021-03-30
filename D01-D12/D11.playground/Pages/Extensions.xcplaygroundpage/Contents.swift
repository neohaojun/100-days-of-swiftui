//: [Previous](@previous)

import Foundation

extension Int {
    func squared() -> Int {
        return self * self
    }
    
    // no storing properties in extensions, use computed properties instead
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 8
number.squared()

//: [Next](@next)
