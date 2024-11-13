//
//  CreateJoinHouseView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 12/11/24.
//

import SwiftUI

struct CreateJoinHouseView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Create or Join House")
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 206, height: 400)
                    .background(
                        Image("createJoin")
                            .resizable()
                            .frame(width: 206, height: 206)
                    )
                
                NavigationLink(destination: {
                    
                    CreateHomeView()
                    
                }, label: {
                    HStack {
                        Text(Image(systemName: "house.fill"))
                        Text("Create a new House")
                    }
                    .font(.system(size : 15))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 300, height: 55)
                    .background(Color(red: 0, green: 0.6, blue: 0.67))
                    .cornerRadius(10)
                })
                
                NavigationLink(destination: {
                    
                    JoinHomeView()
                    
                }, label: {
                    HStack {
                        Text(Image(systemName: "key.fill"))
                        Text("Join an House")
                    }
                    .font(.system(size : 15))
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 300, height: 55)
                    .background(Color(red: 0, green: 0.6, blue: 0.67))
                    .cornerRadius(10)
                })
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    CreateJoinHouseView()
}
