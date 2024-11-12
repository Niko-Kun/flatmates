//
//  CreateHomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import SwiftUI

struct CreateHomeView: View {
    var body: some View {
        VStack {
            ToolbarView(title: "Create a New House")
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    CreateHomeView()
}
