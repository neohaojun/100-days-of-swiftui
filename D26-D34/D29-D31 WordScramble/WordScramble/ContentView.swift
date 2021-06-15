//
//  ContentView.swift
//  WordScramble
//
//  Created by hao jun on 14/6/21.
//

import SwiftUI

struct ContentView: View {
    
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        let input = "a b c"
        // create a letters array with the above characters
        let letters = input.components(separatedBy: " ")
        // read a random letter from array
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let word = "swift"
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        let allGood = misspelledRange.location == NSNotFound
        
        return VStack {
            List {
                Section(header: Text("Section 1")) {
                    Text("Static row 1")
                    Text("Static row 2")
                }
                
                Section(header: Text("Section 2")) {
                    ForEach(0..<5) {
                        Text("Dynamic row \($0)")
                    }
                }
                
                Section(header: Text("Section 3")) {
                    Text("Static row 3")
                    Text("Static row 4")
                }
                
                Section(header: Text("Section 4")) {
                    ForEach(people, id: \.self) {
                        Text($0)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            
            if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
                // we found the file in our bundle!
                if let fileContents = try? String(contentsOf: fileURL) {
                    // we loaded the file into a string!
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
