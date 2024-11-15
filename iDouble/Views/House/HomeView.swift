//
//  HomeView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 14/11/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var houseName : String
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(houseName)")
                    .bold()
                    .foregroundStyle(.black)
                    .font(.title)
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
    HomeView(houseName: .constant("ciao"))
}
