//: [Previous](@previous)

import UIKit

let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

// trailing closure syntax
UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}

//: [Next](@next)
