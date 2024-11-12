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
        NavigationStack {
            VStack {
                ImagePickerView()
                
                Text("Insert an Image")
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.black)
                    .padding(.bottom, 25)
                    .padding(.top, -30)
                
                TextField("Write your Name", text: $name)
                    .font(.system(size: 15))
                    .textFieldStyle(.roundedBorder)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
                    .foregroundStyle(.black)
                
                NavigationLink(destination: {
                    
                    if(name == "") {
                        
                    } else {
                        CreateJoinHouseView()
                    }
                    
                }, label: {
                    Text("Done")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .padding(.horizontal, 50)
                        .background(Color(red: 0, green: 0.6, blue: 0.67))
                        .cornerRadius(10)
                })
                .padding(.top, 10)
                .padding(.bottom, 270)
                
                //Button {
                //print("ok")
                //} label: {
                //Text("Done")
                //.foregroundColor(.white)
                //.padding(10)
                //.frame(width: 100, height: 45)
                //.background(Color.blue)
                //.cornerRadius(10)
                //}
                //.padding(.bottom, 200)
                //.padding()
            }
        }
    }
}

#Preview {
    CreateProfileView()
}
