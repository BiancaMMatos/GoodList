//
//  AddTaskViewModel.swift
//  GoodList
//
//  Created by Bianca Maciel on 29/01/26.
//

import Combine

final class AddTaskViewModel: ObservableObject {
    private let createTaskUseCase: CreateToDoTaskUseCase

    init(createTaskUseCase: CreateToDoTaskUseCase) {
        self.createTaskUseCase = createTaskUseCase
    }

    func addTask(title: String, priority: TaskPriority) {
        createTaskUseCase.execute(title: title, priority: priority)
    }
}
