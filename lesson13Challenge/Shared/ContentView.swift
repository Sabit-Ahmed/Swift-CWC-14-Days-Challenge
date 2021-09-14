//
//  ContentView.swift
//  Shared
//
//  Created by Sabit Ahmed on 31/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var score = 0
    @State private var index1 = 0
    @State private var index2 = 2
    @State private var index3 = 1
    private var images = ["apple", "cherry", "star"]
    
    var body: some View {
        ZStack {
            VStack {
                Text("SwiftUI Slots!")
                    .font(.largeTitle)
                Spacer()
                Text("Credits: " + String(score))
                Spacer()
                HStack {
                    Spacer()
                    Image(images[index1])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    Spacer()
                    Image(images[index2])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    Spacer()
                    Image(images[index3])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                
                
                Spacer()
                Button(action: {
                    index1 = Int.random(in: 0...2)
                    index2 = Int.random(in: 0...2)
                    index3 = Int.random(in: 0...2)
                    score = calculateScore()
                }, label: {
                    
                    Text("Spin")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                        
                        
                })
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 150, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                .background(Color.pink)
                .cornerRadius(20)
                
                Spacer()
            }
            
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
    
    func calculateScore () -> Int {
        if (index1 == index2 && index2 == index3) {
            score += 1
        }
        return score
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
