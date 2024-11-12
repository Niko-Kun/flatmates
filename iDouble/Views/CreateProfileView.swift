//
//  CreateProfileView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//
//  It should take you to the CreateHomeView() with a button

import SwiftUI

struct CreateProfileView: View {
    @State var name : String = ""
    
    var body: some View {
        VStack {
            ImagePickerView()
            
            Text("Insert an Image")
                .bold()
                .foregroundColor(.black)
                .padding(.bottom, 25)
                .padding(.top, -30)
            
            TextField("Write your Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .foregroundStyle(.black)
            
            Spacer()
            
            Button {
                print("ok")
            } label: {
                Text("Done")
                    .foregroundColor(.white)
                    .padding(10)
                    .frame(width: 100, height: 45)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.bottom, 200)
            .padding()
            
            Spacer()
        }
        .background(Color(.systemGray6))
    }
}

#Preview {
    CreateProfileView()
}
