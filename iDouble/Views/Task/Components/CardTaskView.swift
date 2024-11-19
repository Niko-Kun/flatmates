//
//  CardTaskView.swift
//  iDouble
//
//  Created by Cristofor Doamre on 13/11/24.
//

import SwiftUI

struct CardTaskView: View {
    
    
    var task = Task(title: "Wash Dishes", statusTask: StatusTask.recursive, date: "Yesterday", description: "Write a description of the task" )
    
    var iconStatus : String {
        switch task.statusTask {
        case StatusTask.completed.rawValue:
            return "checkmark.circle.fill"
        case StatusTask.todo.rawValue:
            return "checkmark.circle"
        case StatusTask.recursive.rawValue:
            return "checkmark.circle"
        default:
            return "checkmark.circle"
        }
    }
    var taskColor: Color {
        switch task.statusTask {
        case StatusTask.completed.rawValue:
            return Color("Completed")
        case StatusTask.todo.rawValue:
            return Color("To_Do")
        case StatusTask.recursive.rawValue:
            return Color("Recursive")
        default:
            return Color("To_Do")
        }
    }
    
    var body: some View {
            
        VStack{
            HStack{
                if( task.statusTask == StatusTask.recursive.rawValue ){
                    HStack{
                        Image(systemName: "repeat").resizable()
                            .frame(width: 15, height: 15)
                        Text("everyday")
                            .font(.system(size: 15))
                    }.padding(.top, 5)
                }else{
                    HStack{
                        Image(systemName: "calendar").resizable()
                            .frame(width: 15, height: 15)
                        Text(task.getData())
                            .font(.system(size: 15))
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
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                Spacer()
            }.padding(.top, 5)
            
            HStack{
                Text(task.descriptionTask)
                    .font(.system(size: 13))
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
                
                Text(task.statusTask)
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
    CardTaskView( )
}
