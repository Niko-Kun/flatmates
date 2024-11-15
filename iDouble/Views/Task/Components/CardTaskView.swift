//
//  CardTaskView.swift
//  iDouble
//
//  Created by Cristofor Doamre on 13/11/24.
//

import SwiftUI

struct CardTaskView: View {
    var onClick : () -> Void
    
    
    var task = Task(title: "Wash Dishes", statusTask: StatusTask.recursive, date: "Yesterday", description: "Write a description of the task" )
    
    var iconStatus : String {
        switch task.statusTask {
        case StatusTask.completed:
            return "checkmark.circle.fill"
        case StatusTask.todo:
            return "checkmark.circle"
        case StatusTask.recursive:
            return "checkmark.circle"
        }
    }
    var taskColor: Color {
        switch task.statusTask {
        case StatusTask.completed:
            return Color("Completed")
        case StatusTask.todo:
            return Color("To_Do")
        case StatusTask.recursive:
            return Color("Recursive")
        }
    }
    
    var body: some View {
            
        VStack{
            HStack{
                if( task.statusTask == .recursive){
                    HStack{
                        Image(systemName: "repeat")
                        Text("everyday")
                    }.padding(.top, 5)
                }else{
                    HStack{
                        Image(systemName: "calendar")
                        Text(task.date)
                    }
                    
                }
                
                Spacer()
                Image(systemName: iconStatus)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(taskColor)
                
                
            }
            HStack{
                Text(task.title)
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                Spacer()
            }.padding(.top, 5)
            
            HStack{
                Text(task.description)
                    .font(.system(size: 14))
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                Spacer()
            }
            
            
            HStack{
                Image( systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.gray)
                Spacer()
                
                Text(task.statusTask.rawValue)
                    .fontWeight(.medium)
                    .padding( .horizontal,17 )
                    .padding( .vertical, 6 )
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
                    .background(
                        Rectangle()
                            .foregroundStyle(taskColor)
                            .cornerRadius(30)
                    )
                    .frame(height: 15)
            }.padding(.top, 20)
            
        }
        
        .frame(maxWidth: .infinity )
        .padding()
        .background( Color("ColorCardTask"))
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.2), radius: 0)
    }
}

#Preview {
    CardTaskView( onClick: {})
}
