//
//  AddView.swift
//  ToDolist
//
//  Created by Amy Chun on 7/4/22.
//

import SwiftUI

struct AddView: View {
  
  @Environment(\.presentationMode) var presentationMode
  @EnvironmentObject var listViewModel: ListViewModel
  @State var textFieldText: String = ""
  
  @State var alertTitle: String = ""
  @State var showAlert: Bool = false
  
    var body: some View {
      ScrollView{
        VStack {
          TextField("Type something here...", text: $textFieldText)
            .padding(.horizontal)
            .frame(height: 55)
            .background(Color.white)
            .cornerRadius(10)
          Button(action: saveButtonPressed,
                 label: {
            VStack {
              Text("save".uppercased())
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 200, height: 60)
                .background(
                    ZStack {
                      Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))

                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: -8, y: -8)

                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            )
                            .padding(2)
                            .blur(radius: 2)
                    }
                )
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                .padding(10)
            }
            
          })
        }
        .padding(14)
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
      .navigationTitle("Add an item 🖊")
      .alert(isPresented: $showAlert, content: getAlert)
     
    }
  func saveButtonPressed() {
    if textIsAppropriate() {
      listViewModel.addItem(title: textFieldText)
      presentationMode.wrappedValue.dismiss()
    }
  }
  
  func textIsAppropriate() -> Bool {
    if textFieldText.count < 3 {
      alertTitle = "Your new todo item must be at least 3 characters long!!! 😨"
      showAlert.toggle()
      return false
    }
    return true
  }
  
  func getAlert() -> Alert {
    return Alert(title: Text(alertTitle))
  }
}

struct AddView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      AddView()
    }
    .environmentObject(ListViewModel())
  }
}
