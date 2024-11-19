//
//  ShareQrView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 19/11/24.
//

import SwiftUI

struct ShareQrView: View {
    
    var body: some View {
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
        
    }
}

#Preview {
    ShareQrView()
}
