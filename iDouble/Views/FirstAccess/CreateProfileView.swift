//
//  CreateProfileView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import SwiftUI

struct CreateProfileView: View {
    @State var name : String = ""
    @State private var showAlert: Bool = false
    var mainColor : Color  = .blue
    var unSelectedColor : Color  = .gray
    @State private var navigateToCreateJoinHouse: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ImagePickerView()
                
                Text("Insert an Image")
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 150, height: 30, alignment: .center)
                
                TextField("Write your Name", text: $name)
                    .font(.system(size: 15))
                    .textFieldStyle(.roundedBorder)
                    .foregroundStyle(.black)
                    .frame(width: 320, height: 70)
                
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
        }
    }
}

#Preview {
    CreateProfileView()
}
