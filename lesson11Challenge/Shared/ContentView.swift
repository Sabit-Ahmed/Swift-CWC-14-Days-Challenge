//
//  ContentView.swift
//  Shared
//
//  Created by Sabit Ahmed on 31/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var numberToShow = 0
    
    var body: some View {
        
        VStack {
            Spacer()
            Text(String(numberToShow))
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.blue)
                .padding()
            
            
            HStack {
                Spacer()
                Button(action: {
                    numberToShow += 2
                }, label: {
                    Text("Add by 2")
                })
                .padding(.all)
                
                Spacer()
                Button(action: {
                    numberToShow *= 2
                }, label: {
                    Text("Multiply by 2")
                })
                .padding(.all)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
