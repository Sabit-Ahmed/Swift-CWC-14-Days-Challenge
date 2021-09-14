//
//  ContentView.swift
//  Shared
//
//  Created by Sabit Ahmed on 31/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var numberToShow = 0
    @State private var crossed50 = false
    
    var body: some View {
        VStack {
            Text(String(numberToShow))
                .padding(.all)
            
            Button(action: {
                
                
                if (numberToShow >= 50) {
                    crossed50 = true
                }
                else if (numberToShow <= 0){
                    crossed50 = false
                }
                
                if (crossed50) {
                    numberToShow = decrease()
                }
                else if (!crossed50) {
                    numberToShow = increase()
                }
                else {
                    print(numberToShow)
                }
                
            }, label: {
                Text("Button")
            })
        }
    }
    
    func increase() -> Int {
        return numberToShow + Int.random(in: 1...10)
    }
    
    func decrease() -> Int {
        return numberToShow - Int.random(in: 1...10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
