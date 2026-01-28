//
//  Task.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

protocol CreateTaskUseCase {
    func execute(title: String, priority: TaskPriority)
}
