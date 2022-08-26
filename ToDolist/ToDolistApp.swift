//
//  ToDolistApp.swift
//  ToDolist
//
//  Created by Amy Chun on 7/4/22.
//

import SwiftUI

@main
struct ToDolistApp: App {
  @StateObject var listViewModel: ListViewModel = ListViewModel()
  
    var body: some Scene {
        WindowGroup {
          NavigationView {
            ListView()
          }
          .environmentObject(listViewModel)
        }
    }
}
