//: [Previous](@previous)

import Foundation

// Planet enum that stores integer values for each of its cases
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

// Swift will automatically assign each of those a number starting from 0, and you can use that number to create an instance of the appropriate enum case
let earth = Planet(rawValue: 2)


// if you want, you can assign one or more cases a specific value, and Swift will generate the rest
enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

// now, Swift will assign 1 to mercury and count upwards from there, meaning that earth is now the third planet
let earth2 = Planet2(rawValue: 3)

//: [Next](@next)
