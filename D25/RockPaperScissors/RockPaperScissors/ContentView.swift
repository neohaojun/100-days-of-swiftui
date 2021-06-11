//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by hao jun on 10/6/21.
//

import SwiftUI

struct ContentView: View {
    
    var options = ["Rock", "Paper", "Scissors"]
    @State private var appChoice = Int.random(in: 0...2)
    @State private var showingResult = false
    @State private var scoreTitle = ""
    @State private var userCorrect = false
    @State private var userScore = 0
    @State private var userAttempts = 0
    
    var body: some View {
        VStack {
            Text("Make a Choice:")
                .padding()
            HStack {
                ForEach(0..<3) { number in
                    Button(action: {
                        optionClicked(number)
                    }) {
                        Text(options[number])
                    }
                }
            }
        }
        .alert(isPresented: $showingResult) {
            Alert(title: Text(scoreTitle), message: Text("Your score is \(userScore)"), dismissButton:
                    userAttempts == 9 ? .default(Text("Restart")) {
                        self.newQuestion()
                    } : .default(Text("Continue")) {
                        self.newQuestion()
                    })
        }
    }
    
    func optionClicked(_ userChoice: Int) {
        
        print(userAttempts)
        
        if userChoice == 0 && appChoice == 2 {
            userCorrect = true
        } else if userChoice == 1 && appChoice == 0 {
            userCorrect = true
        } else if userChoice == 2 && appChoice == 1 {
            userCorrect = true
        }
        
        if userAttempts == 9 {
            scoreTitle = "You've won \(userScore) of 10 rounds so far!"
        } else if userChoice == appChoice {
            scoreTitle = "You tied with our app in this round."
        } else if userCorrect {
            scoreTitle = "You won! 🎉"
            userScore += 1
        } else {
            scoreTitle = "You lost. Try again next time!"
        }
        
        showingResult = true
    }
    
    func newQuestion() {
        appChoice = Int.random(in: 0...2)
        if userAttempts == 9 {
            userAttempts = 0
            userScore = 0
        } else {
            userAttempts += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
