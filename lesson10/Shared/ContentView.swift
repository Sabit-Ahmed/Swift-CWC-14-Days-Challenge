//
//  ContentView.swift
//  Shared
//
//  Created by Sabit Ahmed on 30/8/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            // Button instance with closure
            Button("Click here!", action: {
                print("Clicked!!!")
            })
            .padding(.all)
            
            // Button instance with trailing closure
            Button("Click here!") {
                print("Clicked!!!")
            }
            .padding(.all)
            
            Button(action: {
                print("Clicked!!!")
            }, label: {
                HStack {
                    Image(systemName: "pencil")
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                }
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
