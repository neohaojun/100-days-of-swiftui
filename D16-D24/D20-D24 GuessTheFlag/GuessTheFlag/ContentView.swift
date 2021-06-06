//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by hao jun on 5/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .pink]), startPoint: .top, endPoint: .bottom)
            
            VStack(spacing: 20) {
                Text("Hello World")
                Text("This is inside a VStack")
                Button("Show Alert") {
                    self.showingAlert = true
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Hellow SwiftUI"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
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
