//: [Previous](@previous)

import Foundation

struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor.clothes)
print(other.shoes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

// still prints the original taylor
print(taylor)
// prints the copied taylor with changed shoes
print(taylorCopy)

struct Person2 {
    var clothes: String
    var shoes: String
    
    // functions inside structs (it's called a method)
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

//: [Next](@next)
