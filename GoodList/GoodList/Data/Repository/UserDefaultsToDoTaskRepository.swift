//
//  UserDefaultsToDoTaskRepository.swift
//  GoodList
//
//  Created by Bianca Maciel on 29/01/26.
//

import Foundation

final class UserDefaultsToDoTaskRepository: ToDoTaskRepository {
    
    private let key: String = "stored_tasks"
    private let userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults = .standard) {
        self.userDefaults = userDefaults
    }
    
    func fetchAll() -> [ToDoTask] {
        guard let data = userDefaults.data(forKey: key) else { return [] }
        return (try? JSONDecoder().decode([ToDoTask].self, from: data)) ?? []
    }
    
    func add(_ task: ToDoTask) {
        var tasks = fetchAll()
        tasks.append(task)
        save(tasks)
    }
    
    func update(_ task: ToDoTask) {
        var tasks = fetchAll()
        guard let index = tasks.firstIndex(where: {  $0.id == task.id }) else { return }
        tasks[index] = task
        save(tasks)
    }
    
    func delete(_ task: ToDoTask) {
        var tasks = fetchAll()
        tasks.removeAll { $0.id == task.id }
        save(tasks)
    }
    
    private func save(_ tasks: [ToDoTask]) {
        guard let data = try? JSONEncoder().encode(tasks) else { return }
        userDefaults.set(data, forKey: key)
    }
    
    
}
