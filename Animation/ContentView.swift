//
//  ContentView.swift
//  Animation
//
//  Created by Garret Poole on 2/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            //animationAmount += 0.5
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(Circle()
                    .stroke(.red)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                     //animation type (.default, .easout...) occurs anytime the value changes
                     .animation(
                         .easeInOut(duration: 1)
                             .repeatForever(autoreverses: false),
                         value: animationAmount))
        .onAppear {
            animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
