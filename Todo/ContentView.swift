//
//  ContentView.swift
//  Todo
//
//  Created by Leandro Meneguel on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var newTaskTitle: String = ""
    @State private var tasks: [String] = ["Learn SwiftUI", "Build Todo App", "Get iOS Job"]
    
    var body: some View{
        NavigationView {
            VStack {
                //Input Section
                HStack {
                    TextField("New Task", text: $newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button("Add") {
                        addTask()
                    }
                    .disabled(newTaskTitle.isEmpty)
                }
                .padding()
                
                //Task List
                List {
                    ForEach(tasks, id: \.self) { task in
                        Text(task)
                    }
                }
                .listStyle(PlainListStyle())
                Spacer()
            }
            .navigationTitle("My Todo List")
        }
    }
    
    private func addTask() {
        let trimmedTask = newTaskTitle.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmedTask.isEmpty else { return }
        
        tasks.append(newTaskTitle)
        newTaskTitle = "" //Clear the imput field
    }
}

#Preview {
    ContentView()
}
