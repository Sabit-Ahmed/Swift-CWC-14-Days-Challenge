//
//  ContentView.swift
//  Shared
//
//  Created by Sabit Ahmed on 29/8/21.
//

import SwiftUI

struct ContentView: View {

    // State properties
    @State private var playerCard = "card5"
    @State private var cpuCard = "card6"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack {
                Spacer()
                Image ("logo")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                        .padding(.all)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                // Action of button here
                Button(action: {
                    // Action
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update scores
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    }
                    else if (playerRand < cpuRand) {
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").fontWeight(.heavy)
                            .foregroundColor(.white).padding(.all)
                        
                        Text(String(playerScore))
                            .foregroundColor(.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                       
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Text(String(cpuScore))
                            .foregroundColor(Color.white)
                            .padding(.all)
                }
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

}
