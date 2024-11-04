//
//  ContentView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("chris")
                    .font(.title)
                
                Text("Prova repository")
                    .bold()
            }
            .padding()
            .preferredColorScheme(.dark)
        }
        
    }
}

#Preview {
    ContentView()
}
