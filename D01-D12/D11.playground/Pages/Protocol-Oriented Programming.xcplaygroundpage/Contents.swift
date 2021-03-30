//: [Previous](@previous)

import Foundation

protocol Identifiable {
    var id: String { get set }
    // for this you would need every conforming type to write their own identify() methods
    func identify()
}

extension Identifiable {
    // protocol extensions allow us to provide a default function:
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
    // this struct has identify() because of the extension
}

let twostraws = User(id: "twostraws")
twostraws.identify()

//: [Next](@next)
