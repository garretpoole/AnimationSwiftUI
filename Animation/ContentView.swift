//
//  ContentView.swift
//  Animation
//
//  Created by Garret Poole on 2/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            //do nothing
        }
        .frame(width: 200, height: 200)
        .background(.blue)
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
