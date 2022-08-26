//
//  Button.swift
//  ToDolist
//
//  Created by Amy Chun on 8/21/22.
//

//import SwiftUI
//
//struct Button: View {
//    var body: some View {
//
//      VStack {
//        Text("Button")
//            .font(.system(size: 20, weight: .semibold, design: .rounded))
//            .frame(width: 200, height: 60)
//            .background(
//                ZStack {
//                    Color(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777)
//
//                    RoundedRectangle(cornerRadius: 16, style: .continuous)
//                        .foregroundColor(.white)
//                        .blur(radius: 4)
//                        .offset(x: -8, y: -8)
//
//                    RoundedRectangle(cornerRadius: 16, style: .continuous)
//                        .fill(
//                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                        )
//                        .padding(2)
//                        .blur(radius: 2)
//                }
//            )
//            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
//            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)), radius: 20, x: 20, y: 20)
//            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
//      }
//      .frame(maxWidth: .infinity, maxHeight: .infinity)
//      .background(Color(#colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)))
//      .edgesIgnoringSafeArea(.all)
//
//    }
//}
//
//struct Button_Previews: PreviewProvider {
//    static var previews: some View {
//        Button()
//    }
//}
