import UIKit

struct User {
    var username: String
}

var user = User(username: "twostraws")

struct InitUser {
    var username: String
    
    // provide our own initialiser to replace the default one
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var initUser = InitUser()
user.username = "twostraws"
