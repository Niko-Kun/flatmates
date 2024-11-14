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
    //me
    var body: some View {
        
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 206, height: 225)
            .background(
                Image("boardingWelcome")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 206, height: 225)
                    .clipped()
            )
        
        Text("Task Management\nMade Simple")
            .font(.system(size: 24))
            .bold()
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
            .frame(width: 323, height: 59, alignment: .top)
        
        Text("Assign tasks, track progress, and get reminders to keep the household running smoothly. Every housemate will know exactly what needs to be done.")
            .font(Font.system(size: 14))
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
            .frame(width: 335, height: 90, alignment: .top)
        
        HStack(alignment: .center) {
            
        }
        
        Button {
            nextView = true
        } label: {
            Text("Get Started!")
        }
        .fullScreenCover(isPresented: $nextView) {
            CreateProfileView()
        }
        .bold()
        .foregroundStyle(.white)
        .font(.system(size: 24))
        .frame(width: 208, height: 60, alignment: .center)
        .background(Color(red: 0, green: 0.6, blue: 0.67))
        .cornerRadius(12)
    }
}

#Preview {
    BoardingView()
}
