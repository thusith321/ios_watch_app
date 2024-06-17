//
//  AddItemLink.swift
//  WatchTaskListSample
//
//  Created by Thusith Hettiarachchi on 2024-06-08.
//

import SwiftUI

struct AddItemLink: View {
    @EnvironmentObject private var model: ItemListModel
    
    var body: some View {
        VStack {
            TextFieldLink(prompt: Text("New Item")) {
                Label("Add",
                      systemImage: "plus.circle.fill")
            } onSubmit: {
                model.items.append(ListItem($0))
            }
            
            Spacer()
                .frame(height: 5.0)
        }
    }
}

struct AddItemLink_Previews: PreviewProvider {
    static var previews: some View {
        AddItemLink()
            .environmentObject(ItemListModel())
    }
}
