//
//  AddTaskView.swift
//  GoodList
//
//  Created by Bianca Maciel on 29/01/26.
//

import SwiftUI

struct AddTaskView: View {

    @ObservedObject var viewModel: AddTaskViewModel
    @Environment(\.dismiss) private var dismiss

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
            
            Button {
                viewModel.addTask(
                    title: title,
                    priority: priority
                )
                dismiss()
            } label: {
                Text("Add Task")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .disabled(title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
            .opacity(title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? 0.5 : 1)

            
        }
        .navigationTitle("New Task")
    }
}
