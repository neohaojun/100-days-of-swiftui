import UIKit

// structs and classes can have their own variables and constants - these are called properties
struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()

// property observers let you add code to be run when a property is about to be changed or has been changed
struct ObservingPerson {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var observingTaylor = ObservingPerson(clothes: "T-shirts")
observingTaylor.clothes = "short skirts"
// This will print out the messages "I'm changing from T-shirts to short skirts" and "I just changed from T-shirts to short skirts."

// computed properties
struct ComputedPerson {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = ComputedPerson(age: 25)
print(fan.ageInDogYears)
