//
//  Task.swift
//  to do list
//
//  Created by Caroline Chan on 11/08/22.
//

import Foundation

struct TaskEntry {
    let id: Int
    let taskName: String
}

struct Task {
    var tasks: [TaskEntry] = []
    var completedTasks: [TaskEntry] = []
    
    mutating func addTask(task: String) {
        let id: Int = tasks.count + 1
        tasks.append(TaskEntry(id: id, taskName: task))
    }
    
    mutating func completeTask(id: Int) {
        completedTasks.append(tasks[id-1])
        tasks.remove(at: id - 1)
    }
    
    mutating func removeTask(id: Int) {
        tasks.remove(at: id - 1)
    }
}
