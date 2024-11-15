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
    @State private var navigateToKey: Bool = false
    
    var mainColor : Color  = .blue
    var unSelectedColor : Color  = .gray
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Create a New House")
                
                Spacer()
                
                Text("House Name")
                    .font(.system(size: 15))
                    .bold()
                    .frame(width: 320, height: 20, alignment: .leading)
                    .foregroundStyle(.blue)
                
                TextField("Insert the Name", text: $houseName)
                    .background(Color(.systemGray6))
                    .textFieldStyle(.roundedBorder)
                    .foregroundStyle(.black)
                    .font(.system(size: 15))
                    .frame(width: 320, height: 40, alignment: .leading)
                
                Button (action : {
                    if !houseName.isEmpty {
                        navigateToKey = true
                    }
                }) {
                    HStack {
                        Text(Image(systemName: "key.fill"))
                        Text("Generate Key")
                    }
                    .font(.system(size : 15))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color( houseName.isEmpty ? unSelectedColor :  mainColor))
                    .cornerRadius(10)
                }
                
                
                Spacer()
            }
            .navigationBarHidden(true)
            
            NavigationLink(destination: KeyView(houseName: houseName), isActive: $navigateToKey){ EmptyView()}
        }
    }
}

#Preview {
    CreateHomeView()
}
