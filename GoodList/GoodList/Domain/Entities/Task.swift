//
//  Task.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import SwiftUI
import Foundation

struct ToDoTask: Identifiable, Codable {
    let id: UUID
    let title: String
    let isCompleted: Bool
    let priority: TaskPriority
}

enum TaskPriority: Int, CaseIterable {
    case low
    case medium
    case high
    
    var label: String {
        switch self {
        case .low: "Low"
        case .medium: "Medium"
        case .high: "High"
        }
    }
    
    var color: Color {
        switch self {
        case .low: .green
        case .medium: .orange
        case .high: .red
        }
    }
}
