//
//  ContentView.swift
//  Animations
//
//  Created by Kitwana Akil on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
            
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        //.animation(.default, value: enabled)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        //.animation(.default, value: enabled)
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
