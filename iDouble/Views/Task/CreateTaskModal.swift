//
//  CreateTaskModal.swift
//  iDouble
//
//  Created by Cristofor Doamre on 15/11/24.
//

import SwiftUI

struct CreateTaskModal: View {
    
    @State var name: String = ""
    @State var surname: String = ""
    @State var description: String = ""
    @State var favouriteColor: Color = .accentColor
    
    var add : () -> Void
    
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Name") {
                    TextField("Learner's Name", text: $name)
                }
                Section("Surname") {
                    TextField("Learner's Surname", text: $surname)
                }
                Section("Description") {
                    TextField("Learner's Description", text: $description)
                }
                Section("Favourite Color") {
                    ColorPicker("Select a color", selection: $favouriteColor)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        showModal.toggle()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        showModal.toggle()
                    }
                }
            }
            .navigationTitle("New Learner")
        }
    }
}

#Preview {
    CreateTaskModal(add: {},showModal: .constant(true) )
}
