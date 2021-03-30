//: [Previous](@previous)

import Foundation

struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

// individual instances of structs have different names
let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Student2 {
    // this static variable belongs to the struct itself rather than instances of the struct
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

// hence, read it using Student2
print(Student2.classSize)

//: [Next](@next)
