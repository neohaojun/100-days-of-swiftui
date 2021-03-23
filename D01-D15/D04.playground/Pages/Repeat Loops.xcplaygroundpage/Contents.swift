//: [Previous](@previous)

import Foundation

var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20
// because the condition comes at the end of the repeat loop the code inside the loop will always be executed at least once

print("Ready or not, here I come!")

// this line of code will never run, as false is always false
while false {
    print("This is false")
}

// however, this will run as repeat only fails the condition after the loop runs
repeat {
    print("This is false")
} while false

//: [Next](@next)
