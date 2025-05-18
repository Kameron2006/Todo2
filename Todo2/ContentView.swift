//
//  ContentView.swift
//  Todo2
//
//  Created by Scholar on 5/14/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack {
                Text("To do List")
                    .font(.system(size: 40, weight: .bold))
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
            }
            .padding()
            Spacer()
            List {
                ForEach(toDos) { toDoItem in
                    if toDoItem.isImportant {
                        Text("⭐ " + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                    
                }
            }
        }
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self)
}
