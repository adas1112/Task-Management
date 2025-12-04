//
//  ContentView.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 24/11/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        var hex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hex = hex.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255
        let g = Double((rgb >> 8) & 0xFF) / 255
        let b = Double(rgb & 0xFF) / 255

        self.init(red: r, green: g, blue: b)
    }
}


struct splashScreen: View {
    @State private var goHomeScreen = false

    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                ZStack{
                    Image("backgroudImage")
                        .padding(.bottom,300)
                    
                    VStack(spacing:20){
                        Text("Task Management & To-Do List")
                            .font(.custom("LexendDeca-SemiBold", size: 24))
                            .frame(width: 240)
                            .multilineTextAlignment(.center)
                        
                        Text("This productive tool is designed to help you better manage your task project-wise conveniently!")
                            .font(.custom("LexendDeca-Regular", size: 14))
                            .frame(width: 270)
                            .foregroundColor(Color(hex: "958DA5"))
                            .multilineTextAlignment(.center)
                        
                        // Hidden NavigationLink
                        NavigationLink(destination:     CustomTabBarMain(),
                                       isActive: $goHomeScreen) {
                            EmptyView()
                        }

                        Button(action:{
                            goHomeScreen = true
                        })
                        {
                            HStack(spacing: 70){
                                Text("Let's Start")
                                Image("right")
                                    .frame(width: 24, height: 24)
                            }
                            .padding(.leading,80)
                            
                        }
                        .frame(width: 331, height: 52)
                        .background(Color(hex: "5F33E1"))
                        .foregroundStyle(.white)
                        .font(.custom("LexendDeca-SemiBold", size: 19))
                        .cornerRadius(14)
                        .shadow(color: Color(hex: "5F33E1").opacity(0.2), radius: 20,x: 0,y: 10)
                        
                    }
                    .padding(.top,350)
                    
                }
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    splashScreen()
}
