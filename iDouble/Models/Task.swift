//
//  Task.swift
//  iDouble
//
//  Created by Cristofor Doamre on 13/11/24.
//

import Foundation
import SwiftData

@Model
class Task : Identifiable {
    
    var id: UUID = UUID()
    var title : String = "No Title"
    var statusTask : String = StatusTask.todo.rawValue
    var date : String = "Yesterday"
    var descriptionTask : String = "description of your task"
    
    init(title: String, statusTask: StatusTask, date: String, description: String){
        self.title = title
        self.statusTask = statusTask.rawValue
        self.date = date
        self.descriptionTask = description
    }
    
    func getData() -> String{
        return DateManager.convertFromTimestamp_dd_mm(timestamp: self.date)
    }
}

enum StatusTask : String{
    case todo = "To Do"
    case recursive = " To Do"
    case completed = "Completed"
}
