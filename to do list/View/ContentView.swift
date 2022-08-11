//
//  ContentView.swift
//  to do list
//
//  Created by Caroline Chan on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var taskName: String = ""
    @State private var task = Task()
    
    var body: some View {
        VStack{
            HStack{
                TextField("Enter new task", text: $taskName)
                
                Spacer()
                
                Button(action: {
                    task.addTask(task: taskName)
                }){
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            .padding()
            
            Spacer()
            
            Text("TO DO LIST")
                .background(Color.gray)
            
            List(task.tasks, id: \.id){data in
                Text(data.taskName)
                    .swipeActions(allowsFullSwipe: false){
                        Button(action: {
                            task.removeTask(id: data.id)
                        }){
                            Image(systemName: "trash.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }.tint(Color.red)
                        
                        Button(action: {
                            task.completeTask(id: data.id)
                        }){
                            Image(systemName: "checkmark.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }.tint(Color.green)
                    }
            }
            
            Text("COMPLETED")
                .background(Color.gray)
            
            List(task.completedTasks, id: \.id){data in
                Text(data.taskName)
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
