//
//  ListRowView.swift
//  ToDolist
//
//  Created by Amy Chun on 7/4/22.
//

import SwiftUI

struct ListRowView: View {
  
  let item: ItemModel
  
  var body: some View {
    HStack {
      Image(systemName: item.isComplete ? "checkmark.circle" : "circle")
        .foregroundColor(item.isComplete ? .green : .red)
      Text(item.title)
      Spacer()
    }
    .font(.title2)
    .padding(.vertical, 8)
  }
}


struct ListRowView_Previews: PreviewProvider {
  
  static var item1 = ItemModel(title: "First Item", isComplete: false)
  static var item2 = ItemModel(title: "Second Item", isComplete: true)
  
    static var previews: some View {
      Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
      }
      .previewLayout(.sizeThatFits)
    }
}
