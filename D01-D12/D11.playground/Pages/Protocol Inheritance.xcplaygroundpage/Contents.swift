//: [Previous](@previous)

import Foundation

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

// Employee protocol that brings everything together in one protocol
protocol Employee: Payable, NeedsTraining, HasVacation { }

//: [Next](@next)
