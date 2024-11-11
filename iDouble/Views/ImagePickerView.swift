//
//  ImagePickerView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//

import SwiftUI
import PhotosUI

struct ImagePickerView: View {
    @State private var selectedImage: UIImage?
    @State private var isPickerPresented = false
    @State var name : String = ""
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                isPickerPresented = true
            }) {
                if let image = selectedImage {
                    Image(uiImage: image)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                } else {
                    VStack {
                        Circle()
                            .frame(width: 200, height: 200)
                            .foregroundStyle(.gray)
                        Text("Insert an Image")
                            .bold()
                            .foregroundColor(.black)
                    }
                }
            }
            .padding()
            .sheet(isPresented: $isPickerPresented) {
                PhotoPicker(selectedImage: $selectedImage)
            }
            
            TextField("Write your Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .padding()
            
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
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGray6))
    }
}

#Preview {
    ImagePickerView()
}
