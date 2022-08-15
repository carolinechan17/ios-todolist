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
            .frame(width: 30, height: 30)    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonView()
    }
}