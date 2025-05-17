//
//  NewToDoView.swift
//  Todo2
//
//  Created by Scholar on 5/17/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top)
            TextField("Enter the task description...", text: .constant(""))
                .padding()
                .font(.caption)
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it Important?")
            }
            Button{
                
            } label: {
                Text("Save")
            }

        }
        .padding()
    }
}

#Preview {
    NewToDoView()
}
