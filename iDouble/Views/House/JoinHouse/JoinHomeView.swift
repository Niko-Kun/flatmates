//
//  JoinHomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 12/11/24.
//

import SwiftUI

struct JoinHomeView: View {
    @State private var text = ""
    @State private var navigateToHome = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Join an House", onDone: { navigateToHome = true })
                
                Spacer()
                
                NavigationLink(
                    destination: HomeView(houseName: ""),
                    isActive: $navigateToHome,
                    label: { EmptyView() }
                )
                
                Text("Insert the Key")
                    .font(.system(size: 15))
                    .frame(width: 280, height: 20, alignment: .leading)
                    .foregroundStyle(.blue)
                    .bold()
                
                HStack {
                    TextField("Ciao", text: $text)
                        .font(.system(size: 15))
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
