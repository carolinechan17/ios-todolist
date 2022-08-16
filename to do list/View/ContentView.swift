//
//  ContentView.swift
//  to do list
//
//  Created by Caroline Chan on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [String] = ["task1", "task2", "task3"]
    @State private var completedTasks: [String] = ["completedtask", "completedtask", "completedtask"]
    @State private var taskName: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter task here", text: $taskName)
                    
                    Button(action: {
                        add(taskName)
                    }){
                        Text("Add")
                    }
                }.padding(25)
            
                List {
                    //MARK: 1st section for incompleted task
                    Section(
                        header:
                            Text("TO DO")
                            .font(.system(size: 14))
                            .fontWeight(.light)
                    ) {
                        ForEach(tasks, id: \.self){
                            task in
                            Text(task)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                    
                    //MARK: 2nd section for completed task
                    Section(
                        header:
                            Text("COMPLETED")
                            .font(.system(size: 14))
                            .fontWeight(.light)
                    ) {
                        ForEach(completedTasks, id: \.self){
                            task in
                            Text(task)
                        }
                    }
                }
                .toolbar {
                    EditButton()
                }
                .navigationTitle("To do lists")
            }
            .accentColor(Color.red)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

extension ContentView {
    func add(_ taskName: String) {
        tasks.append(taskName)
    }
    
    func delete(indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        tasks.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func complete(indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
}
