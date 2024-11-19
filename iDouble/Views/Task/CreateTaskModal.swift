//
//  CreateTaskModal.swift
//  iDouble
//
//  Created by Cristofor Doamre on 15/11/24.
//

import SwiftUI
import Foundation
	
struct CreateTaskModal: View {
    
    var task: Task? = nil
    
    @State var title: String = ""
    @State var notes: String = ""
    
    @State var date = Date()
    
    @State var selectedRepeat = "Never"
    @State var selectedAssigned = "All"
    
    let assigned = ["All", "User 1", "User 2", "User 3"]
    let repeats = ["Never", "Everyday", "Every Week", "Every Month", "Custom"]
    
    var add : (_ task: Task) -> Void
    
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                Color.black.opacity(0.1)
                    .ignoresSafeArea()
                Form {
                    Section {
                        TextField("Title", text: $title)
                        TextField("Notes", text: $notes)
                    }
                     
                    Section {
                        DatePicker("End", selection: $date, displayedComponents: .date)
                        
                        Picker("Repeat", selection: $selectedRepeat) {
                            ForEach(repeats, id: \.self) { repeats in
                                Text(repeats)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                    
                    Picker("Assigned to", selection: $selectedAssigned) {
                        ForEach(assigned, id: \.self) { assigned in
                            Text(assigned)
                        }
                    }
                    .pickerStyle(.menu)
                }
                .scrollContentBackground(.hidden)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        showModal = false
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text(task?.title ?? "")
                        .font(.headline)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        let newTask = Task(title: title, statusTask: StatusTask.todo, date: DateManager.getTimestamp(date: date), description: notes)
                        add(newTask)
                        showModal = false
                    }
                }
            }
            .background(.white)
        }
    }
}

#Preview {
    CreateTaskModal(add: {task in },showModal: .constant(true) )
}
