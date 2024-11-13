//
//  QrView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 13/11/24.
//

import SwiftUI

struct QrView: View {
    var body: some View {
        VStack {
            ToolbarView(title: "Create a New House", onDone: {
            })
            
            Spacer()
            
            Text("House Name")
                .foregroundStyle(.blue)
                .bold()
            
            VStack {
                
                Image("HouseQrCode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230, height: 230)
                    .background(.white)
                    .cornerRadius(10)
                
                Button(action: {
                    print("si")
                }) {
                    Text("Create Your House")
                }
                .frame(width: 240, height: 50)
                .background(.blue)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .padding(.top)
                
            }.frame(width: 300, height: 400)
                .background(Color(.systemGray6))
                .cornerRadius(50)
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    QrView()
}
