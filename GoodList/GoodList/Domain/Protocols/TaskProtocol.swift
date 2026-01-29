//
//  TaskProtocol.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

/// To encapsulate the rules and process for creating a new to-do task
protocol CreateToDoTaskUseCase {
    func execute(title: String, priority: TaskPriority)
}

/// To be the single place responsible for defining how the app retrieves the task list
protocol FetchToDoTasksUseCase {
    func execute() -> [ToDoTask]
}
