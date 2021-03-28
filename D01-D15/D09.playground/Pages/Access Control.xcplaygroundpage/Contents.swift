//: [Previous](@previous)

import Foundation

struct Person {
    // private variable cannot be read from outside the struct
    private var id: String

    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        // however, id can be read from within the struct
        return "My social security number is \(id)"
    }
}

let ed = Person(id: "12345")
// trying to read ed.id will not work

// another common option is public, which lets all other code use the property or method

//: [Next](@next)
