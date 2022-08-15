//
//  ButtonView.swift
//  to do list
//
//  Created by Caroline Chan on 15/08/22.
//

import SwiftUI

struct AddButtonView: View {
    var body: some View {
        Image(systemName: "plus.circle")
            .resizable()
            .frame(width: 30, height: 30)
    }
}

struct CompleteButtonView: View {
    var body: some View {
        Image(systemName: "checkmark.circle")
            .resizable()
            .frame(width: 30, height: 30)
            .tint(Color.green)
    }
}

struct DeleteButtonView: View {
    var body: some View {
        Image(systemName: "trash.circle")
            .resizable()
            .frame(width: 30, height: 30)
            .tint(Color.red)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}
