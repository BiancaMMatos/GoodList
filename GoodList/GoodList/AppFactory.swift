//
//  AppFactory.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//


import Foundation

struct AppFactory {

    static func makeToDoTaskListView() -> ToDoTaskListView {

        // 1. Repository
        let repository: ToDoTaskRepository = UserDefaultsToDoTaskRepository()

        // 2. UseCases
        let fetchTasksUseCase = DefaultFetchToDoTasksUseCase(repository: repository)
        let createTaskUseCase = DefaultCreateToDoTaskUseCase(repository: repository)
        let deleteTaskUseCase = DefaultDeleteToDoTaskUseCase(repository: repository)

        // 3. ViewModel
        let viewModel = ToDoTaskListViewModel(fetchTasksUseCase: fetchTasksUseCase, deleteTaskUseCase: deleteTaskUseCase)
        let addVM = AddTaskViewModel(createTaskUseCase: createTaskUseCase)

        // 4. View
        return ToDoTaskListView(addViewModel: addVM, viewModel: viewModel)
    }
}

