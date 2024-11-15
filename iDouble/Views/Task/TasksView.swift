//
//  TasksView.swift
//  iDouble
//
//  Created by Cristofor Doamre on 13/11/24.
//

import SwiftUI

struct TasksView: View {
    
    enum ListFilter: String, CaseIterable, Identifiable {

        case all = "All"
        case todo = "To-Do"
        case inProgress = "In-Progress"
        case done = "Done"
            
        var id: Self { self }
    }
    
    var tasksVM = TasksViewModel()
    
    @State private var selectedPlanet: ListFilter = .all
    
    
    var body: some View {
        ZStack{
            
            //ToolbarView()
            Color(.white).ignoresSafeArea()
            
            VStack{
                title
                selector
                    .padding(.horizontal, 16)
                
                if( self.tasksVM.ListTasks.isEmpty ){
                    Text("No Task here, lets create one!")
                      .padding(.top, 20)
                      .foregroundStyle( Color.gray)
                }else{
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
                
                Spacer()
            }
            
        }.background(.white)
        
    }
    
    func deleteTask( item : Int){
        self.tasksVM.ListTasks.remove( at : item)
    }
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
            Picker("Planet", selection: $selectedPlanet) {
                ForEach(ListFilter.allCases) { filter in
                    Text(filter.rawValue.capitalized)
                }
            }
            .colorMultiply( .main)
            .pickerStyle(.segmented)
        }
    }
}

#Preview {
    TasksView()
}
