//: [Previous](@previous)

import Foundation

struct Person {
    var id: String
    
    // failable initializer: an initialiser that might work or might not.
    init?(id: String) {
        if id.count == 9 {
            // if id is a nine-letter string, continue as normal
            self.id = id
        } else {
            // otherwise, return nil
            return nil
        }
    }
}

//: [Next](@next)
