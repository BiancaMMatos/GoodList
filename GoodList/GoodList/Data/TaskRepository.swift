//
//  TaskRepository.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//


protocol TaskRepository {
    func fetchAll() -> [Task]
    func add(_ task: Task)
    func update(_ task: Task)
    func delete(_ task: Task)
}
