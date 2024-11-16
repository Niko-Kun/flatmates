//
//  DetailTaskView.swift
//  iDouble
//
//  Created by Cristofor Doamre on 15/11/24.
//

import SwiftUI

struct DetailTaskView: View {
    @Binding var task: Task
    
    @State var name: String = ""
    @State var surname: String = ""
    @State var description: String = ""
    @State var favouriteColor: Color = .accentColor

    var add: () -> Void
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
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        showModal = false
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text(task.title)
                        .font(.headline)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        add()
                        showModal = false
                    }
                }
            }
            .navigationTitle("New Learner")
        }
    }
}



#Preview {
    DetailTaskView(
        task: .constant(Task(title: "Wash Dishes", statusTask: .recursive, date: "Yesterday", description: "Write a description of the task")),
        add: {},
        showModal: .constant(true)
    )
}
