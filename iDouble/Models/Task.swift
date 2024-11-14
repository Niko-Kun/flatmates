//
//  Task.swift
//  iDouble
//
//  Created by Cristofor Doamre on 13/11/24.
//

import Foundation

class Task : Identifiable {
    
    var id: UUID = UUID()
    var title : String = "No Title"
    var statusTask : StatusTask = StatusTask.todo
    var date : String = "Yesterday"
    var description : String = "description of your task"
    
    init(title: String, statusTask: StatusTask, date: String, description: String){
        self.title = title
        self.statusTask = statusTask
        self.date = date
        self.description = description  
    }
}

enum StatusTask : String{
    case todo = "To Do"
    case recursive = " Recursive"
    case completed = "Completed"
}
