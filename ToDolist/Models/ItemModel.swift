//
//  ItemModel.swift
//  ToDolist
//
//  Created by Amy Chun on 7/4/22.
//

import Foundation

//Immutable Struct

struct ItemModel: Identifiable, Codable {
  let id: String
  let title: String
  let isComplete: Bool
  
  init(id: String = UUID().uuidString, title: String, isComplete: Bool) {
    self.id = id
    self.title = title
    self.isComplete = isComplete
  }
  
  func updateCompletion() -> ItemModel {
    return ItemModel(id: id, title: title, isComplete: !isComplete)
  }
}
