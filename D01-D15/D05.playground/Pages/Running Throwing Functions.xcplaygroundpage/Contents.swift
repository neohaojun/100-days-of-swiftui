//: [Previous](@previous)

import Foundation

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        // throw PasswordError.obvious if their password is “password"
        throw PasswordError.obvious
    }

    return true
}

// do starts a section of code that might cause problems
do {
    // try is used before every function that might throw an error
    try checkPassword("password")
    print("That password is good!")
// catch lets you handle errors gracefully
} catch {
    print("You can't use that password.")
}
// if any errors are thrown inside the do block, execution immediately jumps to the catch block

//: [Next](@next)
