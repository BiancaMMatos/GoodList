//
//  ToDoTaskListView.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import SwiftUI

struct ToDoTaskListView: View {
    
    @StateObject var viewModel: ToDoTaskListViewModel
    @StateObject var addViewModel: AddTaskViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.tasks) { task in
                    ToDoTaskRow(task: task)
                }
                .onDelete(perform: viewModel.delete)
            }
            .navigationTitle("GoodList")
            .toolbar {
                NavigationLink {
                    AddTaskView(viewModel: addViewModel)
                } label: {
                    Image(systemName: "plus")
                }
            }
            .onAppear {
                viewModel.loadTasks()
            }
        }
    }
}
