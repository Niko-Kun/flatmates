//
//  CreateJoinHouseView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 12/11/24.
//

import SwiftUI

struct CreateJoinHouseView: View {
    var body: some View {
        VStack {
            ToolbarView(title: "Create or Join a House")
            Spacer()
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 206, height: 225)
                .background(
                    Image("createJoin")
                        .frame(width: 206, height: 225)
                        .clipped()
                )
            
            
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    CreateJoinHouseView()
}
