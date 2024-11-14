//
//  ScanQrView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 14/11/24.
//

import SwiftUI

struct ScanQrView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ToolbarView(title: "Join an House", onDone: {
                    print("tapped")
                })
                
                Spacer()
                
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
