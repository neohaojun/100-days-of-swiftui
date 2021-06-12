//
//  ContentView.swift
//  BetterRest
//
//  Created by hao jun on 12/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()
    
    var body: some View {
        
        // DateComponents lets us read or write specific parts of a date rather than the whole thing
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date()
        
        // pulling out just the hour and minute components
        let components2 = Calendar.current.dateComponents([.hour, .minute], from: wakeUp)
        let hour = components2.hour ?? 0
        let minute = components2.minute ?? 0
        
        // formatting dates
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let dateString = formatter.string(from: Date())
        
        return VStack {
            
            Form {
                Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                Text("\(sleepAmount, specifier: "%.2f") hours")
            }
                DatePicker("Please enter a date", selection: $wakeUp, in: Date()..., displayedComponents: .hourAndMinute)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
