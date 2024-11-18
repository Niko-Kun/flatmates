//
//  CreateProfileView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import SwiftUI

struct CreateProfileView: View {
    @State var name : String = ""
    var mainColor : Color  = .blue
    var unSelectedColor : Color  = .gray
    @State private var navigateToCreateJoinHouse: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ImagePickerView()
                
                TextField("Write your Name", text: $name)
                    .font(.system(size: 15))
                    .textFieldStyle(.roundedBorder)
                    .foregroundStyle(.black)
                    .frame(width: 320, height: 70)
                    .padding(.top, 50)
                
                Button (action : {	
                    if !name.isEmpty {
                        navigateToCreateJoinHouse = true
                    }
                }) {
                    Text("Done")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 50)
                        .background( Color( name.isEmpty ? unSelectedColor :  mainColor))
                        .cornerRadius(10)
                }
                NavigationLink(destination: CreateJoinHouseView(), isActive: $navigateToCreateJoinHouse){ EmptyView()}
            }
            .frame(height: 300)
            .padding(.bottom, 120)
        }
    }
}

#Preview {
    CreateProfileView()
}
