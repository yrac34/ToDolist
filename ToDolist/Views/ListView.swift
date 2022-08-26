//
//  ListView.swift
//  ToDolist
//
//  Created by Amy Chun on 7/4/22.
//

import SwiftUI

struct ListView: View {
  
  @EnvironmentObject var listViewModel: ListViewModel
  
    var body: some View {
      ZStack {
        if listViewModel.items.isEmpty {
          NoItemsView()
            .transition(AnyTransition.opacity.animation(.easeIn))
        } else {
          List {
            ForEach(listViewModel.items) { item in
              ListRowView(item: item)
                .onTapGesture {
                  withAnimation(.linear) {
                    listViewModel.updateItem(item: item)
                  }
                }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
          }
          .listStyle(PlainListStyle())
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
//      .edgesIgnoringSafeArea(.all)
      .navigationTitle("Todo List 📝")
      .navigationBarItems(
        leading: EditButton(),
        trailing:
          NavigationLink("Add", destination: AddView())
      )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView{
        ListView()
      }
       
    }
}
