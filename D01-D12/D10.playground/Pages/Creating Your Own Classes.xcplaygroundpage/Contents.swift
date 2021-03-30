import UIKit

// classes are similar to structs!
class Dog {
    var name: String
    var breed: String

    // classes don't come with their own memberwise initialiser
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// creating instances of that class looks just the same as if it were a struct:
let poppy = Dog(name: "Poppy", breed: "Poodle")
