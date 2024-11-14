//
//  JoinHomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 12/11/24.
//

import SwiftUI

struct JoinHomeView: View {
    @State private var text = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Join an House", onDone: {
                    print("tapped")
                })
                Spacer()
                
                Text("Insert the Key")
                    .frame(width: 280, height: 20, alignment: .leading)
                    .foregroundStyle(.blue)
                    .bold()
                
                HStack {
                    TextField("Ciao", text: $text)
                        .textFieldStyle(.roundedBorder)
                        .frame(height: 50)
                    
                    NavigationLink(destination: {
                        
                        ScanQrView()
                        
                    }, label: {
                        HStack {
                            Text(Image(systemName: "qrcode"))
                        }
                        .font(.system(size : 15))
                        .foregroundColor(.white)
                        .frame(width: 37, height: 37)
                        .background(.blue)
                        .cornerRadius(10)
                    })
                }
                .frame(width: 280)
                
                Spacer()
                
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    JoinHomeView()
}
