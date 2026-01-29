//
//  TaskRepository.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//


protocol ToDoTaskRepository {
    func fetchAll() -> [ToDoTask]
    func add(_ task: ToDoTask)
    func update(_ task: ToDoTask)
    func delete(_ task: ToDoTask)
}
