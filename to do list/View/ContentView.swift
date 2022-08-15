//
//  ContentView.swift
//  to do list
//
//  Created by Caroline Chan on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks : [String] = ["task", "task", "task"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Tasks to do")) {
                    ForEach(tasks, id: \.self){
                        task in
                        Text(task)
                    }
                    .onDelete(perform: delete)
                    .
                }
            }
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
