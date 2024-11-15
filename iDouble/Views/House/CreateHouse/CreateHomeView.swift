//
//  CreateHomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import SwiftUI

struct CreateHomeView: View {
    @State private var houseName = ""
    @State private var showQR: Bool = false
    @State private var navigateToHome = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Create a New House", onDone: { navigateToHome = true })
                
                Spacer()
                
                NavigationLink(
                    destination: HomeView(houseName: $houseName),
                    isActive: $navigateToHome,
                    label: { EmptyView() }
                )
                
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
                
                NavigationLink(destination: {
                    
                    KeyView()
                    
                }, label: {
                    HStack {
                        Text(Image(systemName: "key.fill"))
                        Text("Generate Key")
                    }
                    .font(.system(size : 15))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                })
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    CreateHomeView()
}
