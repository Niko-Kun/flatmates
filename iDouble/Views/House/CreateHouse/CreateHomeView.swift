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
    
    let mainColor : Color = Color(red: 0, green: 0.6, blue: 0.67)
    var unSelectedColor : Color  = .gray
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Create a New House")
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 206, height: 300)
                    .background(
                        Image("createHouse")
                            .resizable()
                            .frame(width: 155, height: 155)
                    )
                
                Text("House Name")
                    .font(.system(size: 15))
                    .bold()
                    .frame(width: 320, height: 20, alignment: .leading)
                    .foregroundStyle(mainColor)
                
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
                        Text("Continue")
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
