//: [Previous](@previous)

import Foundation

// String? means "optional string"
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        // there's a possibility of returning a nil value
        return nil
    } else {
        return "Hate"
    }
}

// getHaterStatus returns an optional String value, hence status must also be an optional value
var status: String?
status = getHaterStatus(weather: "rainy")

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

// optional unwrapping
if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    // this will print out "It was released in Optional(2012)"
    print("It was released in \(year)")
    // this will print out "It was released in 2012"
    print("It was released in \(year!)")
}

//: [Next](@next)
