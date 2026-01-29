//
//  ToDoTaskRow.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import SwiftUI

struct ToDoTaskRow: View {
    let task: ToDoTask
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(task.title)
                    .font(.body)
                
                Text(task.priority.label)
                    .font(.caption)
                    .foregroundColor(task.priority.color)
            }
            
            Spacer()
            
            if task.isCompleted {
                Image(systemName: "checkmark.circle.fill")
            }
        }
    }
}
