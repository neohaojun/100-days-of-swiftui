//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by hao jun on 8/6/21.
//

import SwiftUI

// new custom view for view composition
struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Capsule())
    }
}

// custom modifiers
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

// creating extensions make custom modifiers easier to use
extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

// custom containers
struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<self.columns, id: \.self) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

struct ContentView: View {
    
    @State private var useRedText = false
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    var body: some View {
        VStack {
            // figuring out what's behind the main SwiftUI view
            Text("Hello World")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                .edgesIgnoringSafeArea(.all)
            
            // importance of modifier order
            
            VStack {
                Button("Hello World") {
                    print(type(of: self.body))
                }
                .background(Color.green)
                .frame(width: 200, height: 200)
                
                Button("Hello World") {
                    print(type(of: self.body))
                }
                .frame(width: 200, height: 200)
                .background(Color.green)
                
                Text("Hello World")
                    .padding()
                    .background(Color.red)
                    .padding()
                    .background(Color.blue)
                    .padding()
                    .background(Color.green)
                    .padding()
                    .background(Color.yellow)
            }
            
            // conditional modifiers
            Button("Hello World") {
                // flip the Boolean between true and false
                self.useRedText.toggle()
            }
            .foregroundColor(useRedText ? .red : .blue)
            
            // environment modifiers
            VStack {
                Text("Gryffindor")
                Text("Hufflepuff")
                Text("Ravenclaw")
                Text("Slytherin")
            }
            .font(.title) // environment modifier 1
            .blur(radius: 5) // environment modifier 2
            
            // views as properties
            VStack {
                motto1
                // apply modifiers directly to views as properties
                motto2
                    .foregroundColor(.white)
            }
            
            // view composition: compose new custom views to style close to identical views
            VStack(spacing: 10) {
                CapsuleText(text: "First")
                    .foregroundColor(.white)
                CapsuleText(text: "Second")
                    .foregroundColor(.yellow)
            }
            
            // custom modifiers
            VStack {
                // using the custom modifier created using a struct
                Text("Hello World")
                    .modifier(Title())
                
                // using the custom modifier made using an extension
                Text("Hello World")
                    .titleStyle()
            }
            
            // custom containers
            GridStack(rows: 4, columns: 4) { row, col in
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
