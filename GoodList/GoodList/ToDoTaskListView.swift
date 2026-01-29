//
//  ToDoTaskListView.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import SwiftUI

struct ToDoTaskListView: View {
    
    @StateObject var viewModel: ToDoTaskListViewModel
    
    var body: some View {
        NavigationStack {
            List(viewModel.tasks) { task in
                
            }
            .navigationTitle("GoodList")
            .onAppear {
                viewModel.loadTasks()
            }
        }
    }
}
