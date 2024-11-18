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
    
    let mainColor : Color = Color(red: 0, green: 0.6, blue: 0.67)
    
    var dimBackButtom : CGFloat = 70
    
    var onDone: (() -> Void)? = nil
    
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
                .foregroundStyle(mainColor)
            }
            
            Spacer()
            
            Text("\(title)")
                .bold()
                .font(.system(size: 18))
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
            
            Spacer()
            
            if onDone != nil {
                Button(action: onDone ?? {}) {
                    Text("Done")
                        .font(.system(size: 18))
                        .foregroundStyle(mainColor)
                }
                .frame(maxWidth: dimBackButtom)
            } else {
                Spacer()
                    .frame(maxWidth: dimBackButtom) // Larghezza del pulsante "Back" per bilanciare
            }
        }
        .padding(.horizontal, 10)
        
    }
}

#Preview {
    ToolbarView(title:"test")
}
