//: [Previous](@previous)

import Foundation

struct TaylorFan {
    // static properties and methods belong to a type, rather than to instances of a type (i.e. it belongs to the struct, not instances of the struct)
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
// get the static property using the struct rather than the instance of the struct
print(TaylorFan.favoriteSong)

//: [Next](@next)
