//
//  DefaultDeleteTaskUseCase.swift
//  GoodList
//
//  Created by Bianca Maciel on 29/01/26.
//

import Foundation


final class DefaultDeleteToDoTaskUseCase: DeleteToDoTaskUseCase {

    private let repository: ToDoTaskRepository

    init(repository: ToDoTaskRepository) {
        self.repository = repository
    }

    func execute(task: ToDoTask) {
        repository.delete(task)
    }
}
