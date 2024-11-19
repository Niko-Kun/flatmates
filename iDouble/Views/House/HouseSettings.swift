//
//  HouseSettings.swift
//  iDouble
//
//  Created by Nicolò Amabile on 19/11/24.
//

import SwiftUI

struct HouseSettings: View {
    let mainColor : Color = Color(red: 0, green: 0.6, blue: 0.67)
    
    @State private var navigateToQr : Bool = false
    
    @State var houseName : String
    
    var body: some View {
        VStack {
            ToolbarView(title: "")
            
            Text("My House")
                .bold()
                .frame(width: 350, alignment: .leading)
                .font(.system(size: 35))
            
            Divider()
            
            NavigationStack {
                VStack {
                    HStack {
                        Image(systemName: "house.fill")
                            .foregroundColor(mainColor)
                            .font(.system(size: 25))
                        
                        TextField("House Name", text: $houseName)
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .foregroundColor(mainColor)
                            .font(.system(size: 25))
                        
                        Text("Members")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top)
                    
                    // Persons profiles
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "key.horizontal.fill")
                            .font(.system(size: 20))
                            .foregroundColor(mainColor)
                            .font(.system(size: 25))
                        
                        Text("Key")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.top)
                    
                    NavigationLink(destination: {
                        ShareQrView()
                    }, label: {
                        HStack {
                            Text("Share the key")
                        }
                        .font(.system(size : 15))
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 40)
                        .background(mainColor)
                        .cornerRadius(20)
                        .padding(.top)
                    })
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
        .navigationBarHidden(true)
        }
    }

#Preview {
    HouseSettings(houseName: "test")
}
