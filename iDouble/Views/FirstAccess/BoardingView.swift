//
//  BoardingView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 11/11/24.
//
//  It should take you to the CreateProfileView() with a button

import SwiftUI

struct BoardingView: View {
    @State private var nextView = false
    @State private var navigateToCreateProfile: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 200, height: 200)
                    .background(
                        Image("boardingWelcome")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 200)
                            .clipped()
                    )
                
                Text("Task Management\nMade Simple")
                    .font(.system(size: 24))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 323, height: 60, alignment: .top)
                
                Text("Assign tasks, track progress, and get reminders to keep the household running smoothly. Every housemate will know exactly what needs to be done.")
                    .font(Font.system(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 335, height: 80, alignment: .top)
                
                NavigationLink(destination: {
                    
                    CreateProfileView()
                    
                }, label: {
                    HStack {
                        Text("Get Started!")
                    }
                    .bold()
                    .font(.system(size : 24))
                    .foregroundColor(.white)
                    .frame(width: 208, height: 60, alignment: .center)
                    .background(.blue)
                    .cornerRadius(12)
                })
            }
        }
    }
}

#Preview {
    BoardingView()
}
