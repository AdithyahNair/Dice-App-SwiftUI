//
//  ContentView.swift
//  Dice App SwiftUI Double Practice
//
//  Created by Adithyah Nair on 28/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber: Int = 1
    
    @State var rightDiceNumber: Int = 1
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("diceeLogo")
                    .padding()
                
                Spacer()
                
                HStack {
                    
                    DiceView(diceNumber: leftDiceNumber)
                    
                    DiceView(diceNumber: rightDiceNumber)
                    
                }
                
                Spacer()
                
                Button {
                    
                    leftDiceNumber = Int.random(in: 1...6)
                    
                    rightDiceNumber = Int.random(in: 1...6)
                    
                } label: {
                    
                    Text("Roll")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 180, height: 80)
                    
                }
                .background(Color.red)
                .padding()
                
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
        
    }
    
}

struct DiceView: View {
    
    let diceNumber: Int
    
    var body: some View {
        
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 150, height: 150)
            .padding()
        
    }
    
}
