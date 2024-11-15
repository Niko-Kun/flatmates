//
//  ScanQrView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 14/11/24.
//

import SwiftUI

struct ScanQrView: View {
    @State private var navigateToHome = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Join an House", onDone: { navigateToHome = true })
                
                Spacer()
                
                NavigationLink(
                    destination: HomeView(houseName: .constant("")),
                    isActive: $navigateToHome,
                    label: { EmptyView() }
                )
                
                Image("Crosshair")
                
                Spacer()
                
                Image(systemName: "flashlight.off.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.gray)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ScanQrView()
}
