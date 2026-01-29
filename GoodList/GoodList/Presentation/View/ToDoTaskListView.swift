//
//  ToDoTaskListView.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import SwiftUI

struct ToDoTaskListView: View {

    let addViewModel: AddTaskViewModel
    @ObservedObject var viewModel: ToDoTaskListViewModel

    var body: some View {
        NavigationStack {
            ZStack {

                LinearGradient(
                    colors: [
                        Color.purple.opacity(0.6),
                        Color(uiColor: .systemBackground)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                List {
                    ForEach(viewModel.tasks) { task in
                        ToDoTaskRow(task: task)
                    }
                    .onDelete(perform: viewModel.delete)
                }
                .scrollContentBackground(.hidden)
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
