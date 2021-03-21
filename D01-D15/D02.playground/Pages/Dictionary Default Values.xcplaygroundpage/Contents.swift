//: [Previous](@previous)

import Foundation

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"] // reading Paul's favourite ice cream
favoriteIceCream["Charlotte"] // for this, we will get back nil, as Swift does not have a value for that key
favoriteIceCream["Charlotte", default: "Unknown"] // fix this by giving a default value

//: [Next](@next)
