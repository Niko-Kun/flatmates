//
//  ShareQrView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 19/11/24.
//

import SwiftUI

struct ShareQrView: View {
    
    let mainColor : Color = Color(red: 0, green: 0.6, blue: 0.67)
    
    var body: some View {
        VStack {
            ToolbarView(title: "Qr Code")
            Spacer()
            VStack {
                Text("Share Key")
                    .bold()
                
                Image("HouseQrCode")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 270, height: 270)
                    .background(.white)
                    .cornerRadius(20)
                    .padding(.top)
                
            }
            .frame(width: 300, height: 400)
            .background(Color(.systemGray6))
            .cornerRadius(50)
            
            Spacer()
            
        }.navigationBarHidden(true)
        
    }
}

#Preview {
    ShareQrView()
}
