//: [Previous](@previous)

import Foundation

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

// singer and singerCopy point to the same object in memory, so when we print the singer name again we’ll see “Justin Bieber”:
print(singer.name)

// on the other hand, if Singer was a struct, we'll get "Taylor Swift" printed

//: [Next](@next)
