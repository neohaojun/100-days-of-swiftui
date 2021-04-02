//: [Previous](@previous)

import Foundation

class Person {
    var clothes: String
    var shoes: String
    
    // classes don't have their own initialisers
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

var taylor = Singer(name: "Taylor", age: 25)
taylor.name
taylor.age
taylor.sing()

// class inheritance
class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylor2 = CountrySinger(name: "Taylor", age: 25)
// now sings "Trucks, guitars, and liquor"
taylor2.sing()

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    // custom initialiser that accepts a noise level
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        // new initialiser also needs to know the name and age of the heavy metal singer so it can pass it onto the superclass Singer
        super.init(name: name, age: age)
    }

    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}

//: [Next](@next)
