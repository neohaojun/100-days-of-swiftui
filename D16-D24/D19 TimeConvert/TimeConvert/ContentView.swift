//
//  ContentView.swift
//  TimeConvert
//
//  Created by N HJ on 6/4/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var input = ""
    @State private var inputUnit = 0
    @State private var outputUnit = 1
    
    var unitCases = ["Seconds", "Minutes", "Hours", "Days"]
    
    var output: Int {
        var convertedInput = Int(input)
        var convertedOutput = Int(input)
        
        switch inputUnit {
        case 0:
            convertedInput = (Int(input) ?? 0) * 1
        case 1:
            convertedInput = (Int(input) ?? 0) * 60
        case 2:
            convertedInput = (Int(input) ?? 0) * 3600
        case 3:
            convertedInput = (Int(input) ?? 0) * 86400
        default:
            convertedInput = 0 * 1
        }
        
        switch outputUnit {
        case 0:
            convertedOutput = (convertedInput ?? 0) / 1
        case 1:
            convertedOutput = (convertedInput ?? 0) / 60
        case 2:
            convertedOutput = (convertedInput ?? 0) / 3600
        case 3:
            convertedOutput = (convertedInput ?? 0) / 86400
        default:
            convertedOutput = (convertedInput ?? 0) / 1
        }
        
        return convertedOutput ?? 0
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Input")) {
                    TextField("Time", text: $input)
                        .keyboardType(.decimalPad)
                    Picker("Unit", selection: $inputUnit) {
                        ForEach(0 ..< unitCases.count) {
                            Text(unitCases[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section (header: Text("Output")) {
                    Picker("Unit", selection: $outputUnit) {
                        ForEach(0 ..< unitCases.count) {
                            Text(unitCases[$0])
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    Text("\(output)")
                }
            }.navigationTitle("TimeConvert")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
