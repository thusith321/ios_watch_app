//
//  ItemRow.swift
//  WatchTaskListSample
//
//  Created by Thusith Hettiarachchi on 2024-06-08.
//

import SwiftUI

struct ItemRow: View {
    @EnvironmentObject private var model: ItemListModel
    
    @Binding var item: ListItem
    @State private var showDetail = false
    
    var body: some View {
        Button {
            showDetail = true
        } label: {
            HStack {
                Text(item.description)
                    .strikethrough(item.isComplete)
                Spacer()
                Image(systemName: "checkmark").opacity(item.isComplete ? 100 : 0)
            }
        }
        .sheet(isPresented: $showDetail) {
            ItemDetail(item: $item)
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            showDetail = false
                        }
                    }
                }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: .constant(ListItem("Build an app!")))
            .environmentObject(ItemListModel())
    }
}
