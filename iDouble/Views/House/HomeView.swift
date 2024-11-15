//
//  HomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 14/11/24.
//

import SwiftUI

struct HomeView: View {
    var houseName : String
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(houseName)
                    .bold()
                    .foregroundStyle(.black)
                    .font(.system(size: 35))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 50)
                    .padding(.horizontal)
                
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
