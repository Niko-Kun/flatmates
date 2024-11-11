//
//  CreateHomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import SwiftUI

struct CreateHomeView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            
            Picker(selection: $selectedTab) {
                Text("Create Home").tag(0)
                Text("Join Home").tag(1)
            } label: {
                Text("Create Home")
                Text("Join Home")
            }
            .pickerStyle(.segmented)
            .padding(.top, 30)
            .padding()

            Spacer()
        }
    }
}

#Preview {
    CreateHomeView()
}
