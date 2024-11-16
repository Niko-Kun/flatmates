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
    
    var body: some View {
        VStack {
            Button(action: {
                isPickerPresented = true
            }) {
                if let image = selectedImage {
                    Image(uiImage: image)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                } else {
                    Image("imgPicker")
                        .resizable()
                        .frame(width: 200, height: 200)
                        
                }
            }
            .sheet(isPresented: $isPickerPresented) {
                PhotoPicker(selectedImage: $selectedImage)
            }
        }
    }
}

#Preview {
    ImagePickerView()
}
