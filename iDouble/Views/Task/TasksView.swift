//
//  TasksView.swift
//  iDouble
//
//  Created by Cristofor Doamre on 13/11/24.
//

import SwiftUI

struct TasksView: View {
    //View
    enum ListFilter: String, CaseIterable, Identifiable {

        case all = "All"
        case todo = "To-Do"
        case inProgress = "In-Progress"
        case done = "Done"
            
        var id: Self { self }
    }
    @State private var selectedStatusTask: ListFilter = .all
    
    //system
    
    //Data
    var tasksVM = TasksViewModel()
    
    //MAIN VIEW
    var body: some View {
        ZStack{
            
            Color(.white).ignoresSafeArea()
            
            VStack{
                title
                selector.padding(.horizontal, 16)
                
                if( self.tasksVM.ListTasks.isEmpty ){
                    
                    Text("No Task here, lets create one!")
                      .padding(.top, 20)
                      .foregroundStyle( Color.gray)
                    
                }else{
                      listTask
                }
                
                Spacer()
            }
            
        }.background(.white)
        
    }
    
    
    //View
    var title : some View{
        HStack{
            Text("Tasks")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .padding(.horizontal)
            
            Spacer()
            
            Image(systemName: "plus")
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.horizontal,16)
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
            .colorMultiply( .main)
            .pickerStyle(.segmented)
        }
    }
    
    var listTask: some View{
        List{
            ForEach( self.tasksVM.ListTasks ) { task in
               
                CardTaskView(onClick:  {}, task: task)
                
            }.onDelete{
                indexes in for index in indexes {
                    deleteTask(item : index)
                }
                
            }.listRowSeparator(.hidden)
            
        }.listStyle(PlainListStyle())
    }
    
    //Function
    func deleteTask( item : Int){
        self.tasksVM.ListTasks.remove( at : item)
    }
}

#Preview {
    TasksView()
}
