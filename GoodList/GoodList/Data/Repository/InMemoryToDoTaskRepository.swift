//
//  InMemoryToDoTaskRepository.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

final class InMemoryToDoTaskRepository: ToDoTaskRepository {

    private var tasks: [ToDoTask] = []
    
    func add(_ task: ToDoTask) {
        tasks.append(task)
    }
    
    func update(_ task: ToDoTask) {
        guard let index = tasks.firstIndex(where: { $0.id == task.id }) else {
            return
        }
        tasks[index] = task
    }
    
    func delete(_ task: ToDoTask) {
        tasks.removeAll { $0.id == task.id }
    }
    
    
    func fetchAll() -> [ToDoTask] {
        tasks
    }
    
    
}
