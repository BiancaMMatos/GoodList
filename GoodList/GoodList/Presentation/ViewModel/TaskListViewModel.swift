//
//  TaskListViewModel.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import Combine
import Foundation

final class ToDoTaskListViewModel: ObservableObject {

    @Published private(set) var tasks: [ToDoTask] = []

    private let fetchTasksUseCase: FetchToDoTasksUseCase
    private let deleteTaskUseCase: DeleteToDoTaskUseCase

    init(
        fetchTasksUseCase: FetchToDoTasksUseCase,
        deleteTaskUseCase: DeleteToDoTaskUseCase
    ) {
        self.fetchTasksUseCase = fetchTasksUseCase
        self.deleteTaskUseCase = deleteTaskUseCase
    }

    func loadTasks() {
        tasks = fetchTasksUseCase.execute()
    }

    func delete(at offsets: IndexSet) {
        offsets.forEach { index in
            let task = tasks[index]
            deleteTaskUseCase.execute(task: task)
        }
        
        loadTasks()
    }
}
