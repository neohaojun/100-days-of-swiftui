//: [Previous](@previous)

import Foundation

// print() function is actually variadic: if you pass lots of parameters, they are all printed on one line with spaces between them
print("Haters", "gonna", "hate")

// square() function that can square many numbers
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

// pass the numbers separated by commas
square(numbers: 1, 2, 3, 4, 5)

//: [Next](@next)
