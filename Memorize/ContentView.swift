//
//  ContentView.swift
//  Memorize
//
//  Created by Angel on 30/7/25.
//

import SwiftUI

struct ContentView: View {
    let emoji: Array<String> = ["👻", "🎃", "🕷️", "😈"]
    var body: some View {
        HStack {
            CardView(content: "👻", isFaceUp: false)
            CardView(content: "🎃")
            CardView(content: "🕷️", isFaceUp: true)
            CardView(content: "😈", isFaceUp: true)
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false

    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(Color.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
            
        }
    }
}
                

            
