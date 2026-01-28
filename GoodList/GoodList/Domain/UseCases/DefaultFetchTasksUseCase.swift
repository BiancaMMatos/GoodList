//
//  DefaultFetchTasksUseCase.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//


final class DefaultFetchToDoTasksUseCase: FetchToDoTasksUseCase {

    private let repository: ToDoTaskRepository
    
    init(repository: ToDoTaskRepository) {
        self.repository = repository
    }
    
    func execute() -> [ToDoTask] {
        repository.fetchAll()
            .sorted {
                $0.priority.rawValue > $1.priority.rawValue
            }
    }
    
}
