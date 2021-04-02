import UIKit

// declaring the function
func favoriteAlbum() {
    print("My favorite is Fearless")
}
// calling the function
favoriteAlbum()

// function with parameter
func favoriteAlbumWithName(name: String) {
    print("My favorite is \(name)")
}
favoriteAlbumWithName(name: "Fearless")

// multiple parameters
func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}
printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

// external and internal parameter names
func countLettersInString(myString str: String) {
    print("The string \(str) has \(str.count) letters.")
}
countLettersInString(myString: "Hello")

// common external parameter names are “in”, “for”, and “with”
func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}
countLetters(in: "Hello")

// underscore as the external parameter name tells Swift that it shouldn’t have any external name at all
func countLettersInString2(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}
countLettersInString2("Hello")

// returning values
func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}
