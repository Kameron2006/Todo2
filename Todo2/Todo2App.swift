//
//  Todo2App.swift
//  Todo2
//
//  Created by Scholar on 5/14/25.
//

import SwiftUI
import SwiftData


@main
struct Todo2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
