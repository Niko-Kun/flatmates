//
//  ScanQrView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 14/11/24.
//

import SwiftUI

struct ScanQrView: View {
    @State private var navigateToHome = false
    @State private var isTorchOn = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Join an House", onDone: { navigateToHome = true})
                
                Spacer()
                
                NavigationLink(
                    destination: HomeView(houseName: "ServerName"),
                    isActive: $navigateToHome,
                    label: { EmptyView() }
                )
                
                Image("Crosshair")
                
                Spacer()

                Button(action: {
                    isTorchOn.toggle()
                    toggleTorch(isOn: isTorchOn)
                }) {
                    Text(Image(systemName: "flashlight.off.circle.fill"))
                        .font(.system(size: 50))
                        .frame(width: 50, height: 50)
                        .foregroundStyle(.gray)
                }

            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    ScanQrView()
}
