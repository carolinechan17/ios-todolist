//
//  ButtonView.swift
//  to do list
//
//  Created by Caroline Chan on 13/08/22.
//

import SwiftUI

struct DeleteButtonView: View {
    @State private var task = Task()
    let id: Int
    
    var body: some View {
        Button(action: {
            task.removeTask(id: id)
        }){
            Image(systemName: "trash.circle")
                .resizable()
                .frame(width: 30, height: 30)
        }.tint(Color.red)
    }
}


struct CompleteButtonView: View {
    @State private var task = Task()
    let id: Int
    
    var body: some View {
        Button(action: {
            task.completeTask(id: id)
        }){
            Image(systemName: "checkmark.circle")
                .resizable()
                .frame(width: 30, height: 30)
        }.tint(Color.green)
    }
}
//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        
//    }
//}
