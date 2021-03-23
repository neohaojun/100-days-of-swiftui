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

//: [Next](@next)
