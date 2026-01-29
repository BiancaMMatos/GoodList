//
//  AddTaskView.swift
//  GoodList
//
//  Created by Bianca Maciel on 29/01/26.
//

import SwiftUI

struct AddTaskView: View {
    @ObservedObject var viewModel: AddTaskViewModel

    @State private var title = ""
    @State private var priority: TaskPriority = .medium

    var body: some View {
        Form {
            TextField("Task title", text: $title)

            Picker("Priority", selection: $priority) {
                ForEach(TaskPriority.allCases, id: \.self) {
                    Text($0.label)
                }
            }

            Button("Add Task") {
                viewModel.addTask(title: title, priority: priority)
            }
        }
        .navigationTitle("New Task")
    }
}
