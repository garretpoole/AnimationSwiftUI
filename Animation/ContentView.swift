//
//  ContentView.swift
//  Animation
//
//  Created by Garret Poole on 2/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged{ dragAmount = $0.translation}
                    .onEnded{_ in
                        //explicit animation
                        withAnimation {
                            dragAmount = .zero
                        }
                    }
            )
            //implcit animation the draggin and release
            //.animation(.spring(), value: dragAmount)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
