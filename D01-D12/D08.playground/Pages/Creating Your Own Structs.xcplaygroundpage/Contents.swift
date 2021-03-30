import UIKit

// sport struct which stores a name as a String
struct Sport {
    var name: String
}

// instance of sport struct
var tennis = Sport(name: "Tennis")
print(tennis.name)

// name can be changed!
tennis.name = "Lawn tennis"
