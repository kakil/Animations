//
//  ContentView.swift
//  Animations
//
//  Created by Kitwana Akil on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            //animationAmount += 0.75
            
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 2)
                        .repeatForever(autoreverses: false),
                    value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }
        //.scaleEffect(animationAmount)
        //.blur(radius: (animationAmount - 1) * 3 )
        //.animation(.default, value: animationAmount)
        //.animation(.easeIn, value: animationAmount)
        //.animation(.interpolatingSpring(stiffness: 50, damping: 1), value: animationAmount)
        //.animation(.easeInOut(duration: 2), value: animationAmount)
        //.animation(
        //    .easeInOut(duration: 2)
        //    .delay(1),
        //    value: animationAmount)
//        .animation(
//            .easeInOut(duration: 2)
//            .repeatCount(3, autoreverses: true),
//            value: animationAmount)
        
//        .animation(
//            .easeInOut(duration: 2)
//            .repeatForever(autoreverses: true),
//            value: animationAmount)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
