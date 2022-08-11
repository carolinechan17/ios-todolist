//
//  Task.swift
//  to do list
//
//  Created by Caroline Chan on 11/08/22.
//

import Foundation

struct TaskEntry {
    let taskName: String
    let isCompleted: Bool
    let isDeleted: Bool
}

struct Task {
    var tasks: [TaskEntry] = []
    
    mutating func addTask(task: String) {
        tasks.append(TaskEntry(taskName: task, isCompleted: false, isDeleted: false))
    }
}
