//: [Previous](@previous)

import Foundation

let weather = "sunny"

// if weather is anything other than rain, snow, or sunny, default will be run
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// use fallthrough to continue to the following cases
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//: [Next](@next)
