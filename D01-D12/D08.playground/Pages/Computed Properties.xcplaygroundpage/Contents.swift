//: [Previous](@previous)

import Foundation

// sport struct
struct Sport {
    var name: String
}

struct ComputedSport {
    var name: String
    var isOlympicSport: Bool
    
    // computed property: it returns different values based on the other properties
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//: [Next](@next)
