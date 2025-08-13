//
//  ContentView.swift
//  TabOrderDemo
//
//  Created by Cody Henrichsen on 8/7/25.
//

import SwiftUI

struct TabTextView: View
{
    @State private var firstText : String = "asd"
    @State private  var secondText : String  = "asdasdas"
    @State private  var thirdText : String  = ""
    @State private var demoDate : Date = .now
    var body: some View
    {
        VStack
        {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            VStack
            {
                HStack
                {
                    TextField("type?", text: $firstText)
                        .focusable()
                    TextField("empty", text: $secondText)
                        
                }
                TextField("hint", text: $thirdText)
                    .focusable()
                Button("a", action: doesNothing)
                    .focusable()
                    .keyboardShortcut(.downArrow, modifiers: [.command])
                Button("Click", action: uodate)
                    .focusable()
                DatePicker("Demo Date", selection: $demoDate, displayedComponents: [.date])
                    .focusable()
                    .keyboardShortcut("d", modifiers: .command)
                ToasterView()
                    
                    
            }
            
            
        }
        .padding()
    }
    
    func doesNothing() -> Void
    {
        secondText = "wowwwwww ios"
    }
    
    func uodate() -> Void
    {
        thirdText = "Click responded!"
    }
}

struct ToasterView : View
{
    @State private var textContent : String = ""
    var body: some View
    {
        TextField("words", text: $textContent)
    }
}

#Preview ("Demo of TabOrder")
{
    TabTextView()
}
