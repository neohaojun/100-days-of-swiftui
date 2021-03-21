//: [Previous](@previous)

import Foundation

// enum to store various kinds of activities
enum Activity {
    case bored
    case running
    case talking
    case singing
}

// to be more precise, use associated values
enum AssociatedActivity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = AssociatedActivity.talking(topic: "football")


//: [Next](@next)
