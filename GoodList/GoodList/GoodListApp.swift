//
//  GoodListApp.swift
//  GoodList
//
//  Created by Bianca Maciel on 28/01/26.
//

import SwiftUI

@main
struct GoodListApp: App {
    var body: some Scene {
        WindowGroup {
            AppFactory.makeToDoTaskListView()
        }
    }
}



