//
//  Task.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import Foundation

struct ToDoTask: Identifiable {
    let id: UUID
    let title: String
    let isCompleted: Bool
    let priority: TaskPriority
}

enum TaskPriority: Int, CaseIterable {
    case low
    case medium
    case high
}
