//
//  CreateView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import SwiftUI

struct CreateView: View {
    var body: some View {
        VStack {
            
            Text("ciao")
            
        }.frame(width: 300, height: 350)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.red)
            )
    }
}

#Preview {
    CreateView()
}
