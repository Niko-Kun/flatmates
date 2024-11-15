//
//  KeyView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 13/11/24.
//

import SwiftUI

struct KeyView: View {
    
    var houseName : String
    var code : Int = 0
    var houseCode : String = ""
    
    @State private var navigateToHome = false
    
    init(houseName: String){
        self.code = Int.random(in: 1000..<9999)
        self.houseCode = "\(code)"
        self.houseName = houseName
    }
    

    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Create a New House")
                
                Spacer()
                
                NavigationLink(
                    destination: HomeView(houseName: houseName),
                    isActive: $navigateToHome,
                    label: { EmptyView() }
                )
                
                Text(houseName)
                    .foregroundStyle(.blue)
                    .bold()
                
                VStack {
                    Text("Your House Key")
                        .foregroundStyle(.black)
                    
                    Divider()
                        .frame(width: 200)
                    
                    HStack {
                        Text("\(houseCode)")
                            .foregroundStyle(.black)
                            .frame(width: 150, height: 60)
                            .font(.system(size: 55))
                        Button(action: {
                            UIPasteboard.general.string = houseCode
                            print("House code copied: \(houseCode)")
                        }) {
                            Text(Image(systemName: "document.on.document.fill"))
                                .foregroundStyle(.black)
                                .font(.system(size: 18))
                        }
                    }
                    .padding(.top)
                    
                    HStack {
                        Button(action: {
                            navigateToHome = true
                        }) {
                            Text("Create Your House")
                        }
                        .frame(width: 160, height: 50)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                        .font(.system(size: 15))
                        
                        NavigationLink(destination: {
                            
                            QrView(houseName: houseName)
                            
                        }, label: {
                            HStack {
                                Text(Image(systemName: "qrcode"))
                            }
                            .font(.system(size : 15))
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(.blue)
                            .cornerRadius(10)
                        })
                        
                    }
                    
                    
                    
                }.frame(width: 300, height: 280)
                    .background(Color(.systemGray6))
                    .cornerRadius(50)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    KeyView( houseName : "test" )
}
