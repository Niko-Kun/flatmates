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
                Spacer()
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 206, height: 225)
                    .padding(.top, 100)
                    .background(
                        Image("createJoin")
                            .frame(width: 206, height: 225)
                            .clipped()
                    )
                
                Spacer()
                
                NavigationLink(destination: {
                    
                    CreateHomeView()
                    
                }, label: {
                    HStack {
                        Text(Image(systemName: "house.fill"))
                        Text("Create a new House")
                    }
                    .bold()
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color(red: 0, green: 0.6, blue: 0.67))
                    .cornerRadius(10)
                })
                .padding(.top, 10)
                
                NavigationLink(destination: {
                    
                    JoinHomeView()
                    
                }, label: {
                    HStack {
                        Text(Image(systemName: "key.fill"))
                        Text("Join an House")
                    }
                    .bold()
                    .foregroundColor(.white)
                    .padding(.vertical)
                    .padding(.horizontal, 78)
                    .background(Color(red: 0, green: 0.6, blue: 0.67))
                    .cornerRadius(10)
                })
                .padding(.top, 20)
                .padding(.bottom, 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    CreateJoinHouseView()
}
