//
//  ContentView.swift
//  WatchTaskListSample
//
//  Created by Thusith Hettiarachchi on 2024-06-08.
//

import SwiftUI

@main
struct WatchTaskListSampleApp: App {
    
    @StateObject var itemListModel = ItemListModel()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(itemListModel)
        }
    }
}
