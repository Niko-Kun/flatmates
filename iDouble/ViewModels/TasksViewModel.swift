//
//  TasksViewModel.swift
//  iDouble
//
//  Created by Cristofor Doamre on 13/11/24.
//
class TasksViewModel{
    
    var ListTasks: [Task] = [
        Task(title: "Wash Dishes", statusTask: StatusTask.completed, date: "Yesterday", description: "Write a description of the task" ),
        Task(title: "Throw Trash", statusTask: StatusTask.todo, date: "Yesterday", description: "Write a description of the task" ),
        Task(title: "Die", statusTask: StatusTask.recursive, date: "Today", description: "Write a description of the task" ),
        Task(title: "Wash Dishes", statusTask: StatusTask.completed, date: "Yesterday", description: "Write a description of the task" ),
    ]
}
