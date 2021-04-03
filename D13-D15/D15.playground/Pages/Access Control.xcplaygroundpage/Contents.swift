//: [Previous](@previous)

import Foundation

// access control lets you specify what data inside structs and classes should be exposed to the outside world
class TaylorFan {
    /*
     Public: this means everyone can read and write the property.
     Internal: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property.
     File Private: this means that only Swift code in the same file as the type can read and write the property. (use fileprivate)
     Private: this is the most restrictive option, and means the property is available only inside methods that belong to the type, or its extensions.
     */
    private var name: String?
}

//: [Next](@next)
