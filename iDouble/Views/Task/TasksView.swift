//
//  TasksView.swift
//  iDouble
//
//  Created by Cristofor Doamre on 13/11/24.
//

import SwiftUI
import SwiftData

struct TasksView: View {
    //View
    enum ListFilter: String, CaseIterable, Identifiable {
        
        case all = "All"
        case todo = "To-Do"
        case Recursive = "Recursive"
        case done = "Done"
        
        var id: Self { self }
    }
    
    @Query private var listTaskData : [Task]
    
    @Environment(\.modelContext) var context
    
    @State private var selectedStatusTask: ListFilter = .all
    @State private var showModalCreateTask: Bool = false
    @State private var showModalDetailTask: Bool = false
    
    //system
    var filteredTasks: [Task] {
        switch selectedStatusTask {
        case .all:
            return listTaskData
        case .todo:
            return listTaskData.filter { $0.statusTask == StatusTask.todo.rawValue }
        case .Recursive:
            return listTaskData.filter { $0.statusTask == StatusTask.recursive.rawValue }
        case .done:
            return listTaskData.filter { $0.statusTask == StatusTask.completed.rawValue }
        }
    }
    
    //Data
    var tasksVM = TasksViewModel()
    @State private var selectedTask: Task = Task(title: "Example", statusTask: StatusTask.todo, date: "Yesterday", description: "None")

    //MAIN VIEW
    var body: some View {
        ZStack{
            Color(.white).ignoresSafeArea()
            
            VStack(spacing:4){
                title
                selector.padding(.horizontal, 20)
                
                if( listTaskData.isEmpty ){
                    
                    Text("No Task here, lets create one!")
                      .padding(.top, 20)
                      .foregroundStyle( Color.gray)
                    
                } else {
                      listTask
                }
                
                Spacer()
            }
            .sheet(isPresented: $showModalCreateTask, content: {
                CreateTaskModal( add: AddTask, showModal: $showModalCreateTask)
            })
            
        }.background(.white)
        
    }
    
    
    //View
    var title : some View {
        HStack{
            Text("Tasks")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Spacer()
            
            Button(action : addTask ){
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.horizontal,16)
            }
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    var selector: some View {
        VStack {
            Picker("filterStatus", selection: $selectedStatusTask) {
                ForEach(ListFilter.allCases) { filter in
                    Text(filter.rawValue.capitalized)
                }
            }
            .colorMultiply( Color("LightMainColor"))
            .background(.background).cornerRadius(8)
            .pickerStyle(.segmented)
        }
    }
    
    var listTask: some View {
        List {
            ForEach(filteredTasks) { task in
                CardTaskView(task: task)
                    .onTapGesture {
                        showDetailTask(taskToShow: task)
                    }
            }
            .onDelete { indexes in
                for index in indexes {
                    deleteTask(item: index)
                    RemoveTask(task: listTaskData[index])
                }
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(PlainListStyle())
        .sheet(isPresented: $showModalDetailTask) {
            DetailTaskView(task: $selectedTask, add: {}, showModal: $showModalDetailTask)
        }
    }
    
    //Function
    func RemoveTask(task : Task){
        context.delete(task)
    }
    func AddTask (task : Task){
        print("Saving " + task.title)
        context.insert(task)
    }
    func deleteTask( item : Int){
        self.tasksVM.ListTasks.remove( at : item)
    }
    
    func addTask(){
        showModalCreateTask.toggle()
    }
    
    func showDetailTask(taskToShow : Task){
        print(taskToShow.title);
        selectedTask = taskToShow
        showModalDetailTask.toggle()
    }
}

#Preview {
    TasksView()
}
