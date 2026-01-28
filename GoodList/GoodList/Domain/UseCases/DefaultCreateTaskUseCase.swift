//
//  DefaultCreateTaskUseCase.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import Foundation

final class DefaultCreateToDoTaskUseCase: CreateToDoTaskUseCase {
    
    private let repository: ToDoTaskRepository
    
    init(repository: ToDoTaskRepository) {
        self.repository = repository
    }
    
    func execute(title: String, priority: TaskPriority) {
        let task = ToDoTask(
            id: UUID(),
                        title: title,
                        isCompleted: false,
                        priority: priority
        )
        
        repository.add(task)
    }
    
    
}
