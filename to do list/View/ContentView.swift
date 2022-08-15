//
//  ContentView.swift
//  to do list
//
//  Created by Caroline Chan on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [String] = ["task", "task", "task"]
    @State private var completedTasks: [String] = ["completedtask", "completedtask", "completedtask"]
    
    var body: some View {
        NavigationView {
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
                    .toolbar {
                        Button {
                            tasks.append("newtask")
                        } label: {
                            AddButtonView()
                        }
                    }
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
            .listStyle(SidebarListStyle())
            .navigationTitle("To do lists")
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
    func delete(indexSet: IndexSet) {
        tasks.remove(atOffsets: indexSet)
    }
}
