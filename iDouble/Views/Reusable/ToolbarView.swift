//
//  ToolbarView.swift
//  iDouble
//
//  Created by Nicolò Amabile on 12/11/24.
//

import SwiftUI

struct ToolbarView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var title : String
    var color : Color = .black
    
    var dimBackButtom : CGFloat = 70
    
    var onDone: (() -> Void)?
    
    var body: some View {
        VStack {
            headerSection
            Divider()
        }
    }
    
    var headerSection : some View {
        HStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "chevron.left")
                    Text("Back")
                        .font(.system(size: 18))
                }
                .frame(maxWidth: dimBackButtom)
                .foregroundStyle(.blue)
            }
            
            Spacer()
            
            Text("\(title)")
                .bold()
                .font(.system(size: 18))
                .foregroundStyle(color)
                .frame(maxWidth: .infinity)
            
            Spacer()
            
            if let onDone = onDone {
                Button(action: onDone) {
                    Text("Done")
                        .font(.system(size: 18))
                        .foregroundStyle(.blue)
                }
                .frame(maxWidth: dimBackButtom)
            } else {
                Spacer()
                    .frame(maxWidth: dimBackButtom) // Larghezza del pulsante "Back" per bilanciare
            }
        }
        .padding( .horizontal, 10)
        
    }
}

#Preview {
    ToolbarView(title:"test")
}
