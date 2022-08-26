//
//  NoItemsView.swift
//  ToDolist
//
//  Created by Amy Chun on 7/4/22.
//

import SwiftUI

struct NoItemsView: View {
  
  @State var animate: Bool = false
  let secondaryAccentColor = Color("SecondaryAccentColor")
  
    var body: some View {
      ScrollView {
        VStack(spacing: 10) {
          Text("There are no items!")
            .font(.title)
            .fontWeight(.semibold)
          Text("Stay productive with this todo list :)")
            .padding(.bottom, 20)
        NavigationLink(
          destination: AddView(),
          label: {
            VStack {
              Text("Add Something 😲")
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
            }
              
          })
           
        }
        .padding(40)
    }

  }

}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView{
        NoItemsView()
          .navigationTitle("Title")
      }
       
    }
}

