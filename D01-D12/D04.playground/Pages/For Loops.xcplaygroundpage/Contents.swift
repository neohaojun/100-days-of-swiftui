import Foundation

// range of numbers:
let count = 1...10

// using a for loop to print each item:
for number in count {
    print("Number is \(number)")
}

// doing the same for arrays!
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// if you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values
print("Players gonna ")

for _ in 1...5 {
    print("play")
}
