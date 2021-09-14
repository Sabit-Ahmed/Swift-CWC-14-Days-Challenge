//
//  ContentView.swift
//  Shared
//
//  Created by Sabit Ahmed on 30/8/21.
//

import SwiftUI

struct ContentView: View {
    // Properties
    
    var body: some View {
        // View code
        
        Text ("Hello, world!")
            .padding()
    }
    // Methods
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 12 Pro")
    }
}
