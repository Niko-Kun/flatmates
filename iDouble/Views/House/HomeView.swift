//
//  HomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 14/11/24.
//

import SwiftUI

struct HomeView: View {
    var houseName : String
    
    let mainColor : Color = Color(red: 0, green: 0.6, blue: 0.67)
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text(houseName)
                        .bold()
                        .foregroundStyle(.black)
                        .font(.system(size: 35))
                        .frame(maxWidth: 340, alignment: .leading)
                    
                    NavigationLink(destination: {
                        HouseSettings(houseName: houseName)
                    }, label: {
                        HStack {
                            Text(Image(systemName: "house.fill"))
                        }
                        .font(.system(size : 20))
                        .bold()
                        .foregroundColor(mainColor)
                        .frame(width: 25, alignment: .trailing)
                        .cornerRadius(10)
                    })
                }
                
                Divider()
                
                TasksView()
            }
            .navigationBarHidden(true)
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    HomeView(houseName: "House Name")
}
