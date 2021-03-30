//: [Previous](@previous)

import Foundation

// nested loops! (loop within a loop)
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

// first, give the outside loop a label
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            // then break out of it
            break outerLoop
        }
    }
}

//: [Next](@next)
