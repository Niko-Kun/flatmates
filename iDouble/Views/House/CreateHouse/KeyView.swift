//
//  KeyView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 13/11/24.
//

import SwiftUI

struct KeyView: View {
    var body: some View {
        VStack {
            ToolbarView(title: "Create a New House", onDone: {
            })
            
            Spacer()
            
            Text("Key")
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    KeyView()
}
