//: [Previous](@previous)

import Foundation

// use conditions to check for a winning Blackjack hand:
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

// using else to provide an alternative code to run if the condition is false
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// chaining conditions using else if
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//: [Next](@next)
