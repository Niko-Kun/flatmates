//
//  DetailTaskView.swift
//  iDouble
//
//  Created by Cristofor Doamre on 15/11/24.
//

import SwiftUI

struct DetailTaskView: View {
    @Binding var task: Task
    
    @State var notes: String = ""
    @State var date = Date()
    @State var selectedRepeat = "Never"
    @State var selectedAssigned = "All"
    
    
    let assigned = ["All", "User 1", "User 2", "User 3"]
    let repeats = ["Never", "Everyday", "Every Week", "Every Month", "Custom"]
    
    var add: () -> Void
    @Binding var showModal: Bool
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Image("viewTask")
                        .resizable()
                        .frame(width: 350, height: 350)
                        .scaledToFill()
                        .ignoresSafeArea()
                }.frame(height: 600, alignment: .top)
                
                Color.black.opacity(0.1)
                            .ignoresSafeArea()
                Form {
                    Section {
                        Text(task.title)
                        TextField("Notes", text: $notes)
                    }
                    
                    Section {
                        DatePicker("Starts", selection: $date, displayedComponents: .date)
                        
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
            .background(.white)
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
