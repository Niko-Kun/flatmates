//
//  QrView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 13/11/24.
//

import SwiftUI

struct QrView: View {
    
    var houseName : String
    
    @State private var navigateToHome = false
    
    let mainColor : Color = Color(red: 0, green: 0.6, blue: 0.67)
    
    init(houseName: String) {
        self.houseName = houseName
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Create a New House")
                
                Spacer()
                
                Text(houseName)
                    .foregroundStyle(mainColor)
                    .bold()
                
                VStack {
                    
                    Image("HouseQrCode")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 230, height: 230)
                        .background(.white)
                        .cornerRadius(10)
                    
                    Button(action: {
                        navigateToHome = true
                    }) {
                        Text("Create Your House")
                    }
                    .frame(width: 240, height: 50)
                    .font(.system(size: 15))
                    .background(mainColor)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .padding(.top)
                    
                }.frame(width: 300, height: 400)
                    .background(Color(.systemGray6))
                    .cornerRadius(50)
                
                Spacer()
            }
            .navigationBarHidden(true)
            
            NavigationLink(destination: HomeView(houseName: houseName), isActive: $navigateToHome){ EmptyView()}
        }
    }
}

#Preview {
    QrView(houseName: "test")
}
