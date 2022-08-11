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
            
            List(task.tasks, id: \.taskName){data in
                Text(data.taskName)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
