//: [Previous](@previous)

import Foundation

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed2 = Person2(name: "Ed")
// access the lazy property at least once for it to run
ed2.familyTree



//: [Next](@next)
