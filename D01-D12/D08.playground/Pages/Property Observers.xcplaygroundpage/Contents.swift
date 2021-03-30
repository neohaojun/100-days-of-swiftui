//: [Previous](@previous)

import Foundation

struct Progress {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct ObservingProgress {
    var task: String
    var amount: Int {
        // didSet property observer runs some code whenever amount changes
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var betterProgress = ObservingProgress(task: "Loading data", amount: 0)
betterProgress.amount = 30
betterProgress.amount = 80
betterProgress.amount = 100

//: [Next](@next)
