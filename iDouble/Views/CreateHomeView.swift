//
//  CreateHomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import SwiftUI

struct CreateHomeView: View {
    @State private var houseName = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Create a New House", onDone: {
                    print("tapped")
                })
                
                Spacer()
                
                Text("House Name")
                    .font(.system(size: 15))
                    .bold()
                    .frame(width: 320, height: 20, alignment: .leading)
                    .foregroundStyle(.blue)
                
                TextField("ciao", text: $houseName)
                    .background(Color(.systemGray6))
                    .textFieldStyle(.roundedBorder)
                    .foregroundStyle(.black)
                    .font(.system(size: 15))
                    .frame(width: 320, height: 40, alignment: .leading)
                    

                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    CreateHomeView()
}
