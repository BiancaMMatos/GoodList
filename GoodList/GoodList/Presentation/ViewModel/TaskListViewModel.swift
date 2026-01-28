//
//  TaskListViewModel.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import Combine

final class ToDoTaskListViewModel: ObservableObject {
    @Published private(set) var tasks: [ToDoTask] = []
    private let fetchTasksUseCase: FetchToDoTasksUseCase
    
    init(tasks: [ToDoTask], fetchTasksUseCase: FetchToDoTasksUseCase) {
        self.tasks = tasks
        self.fetchTasksUseCase = fetchTasksUseCase
    }
    
    func loadTasks() {
        tasks = fetchTasksUseCase.execute()
    }
}
