//
//  homeScreen.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 26/11/25.
//

import SwiftUI

struct homeScreen: View {
    @Binding var selectedTab: Int

    var body: some View {
        ZStack(alignment: .bottom) {
            Image("home")
                .resizable()
            ScrollView(showsIndicators: false){
                VStack {
                    HStack(){
                        Image("profile")
                            .frame(width: 46,height: 46)
                        
                        VStack(alignment:.leading,spacing: 4){
                            Text("Hello!")
                                .font(.custom("LexendDeca-Regular", size: 14))
                            Text("Bilal Qureshi")
                                .font(.custom("LexendDeca-SemiBold", size: 19))
                        }
                        Spacer()
                        Image("notification")
                            .frame(width: 24, height: 24)
                    }
                    .padding()
                    
                    VStack{
                        HStack(alignment:.top){
                            VStack(spacing:28) {
                                Text("Your today’s task almost done!")
                                    .frame(width: 118,height: 36)
                                    .font(.custom("LexendDeca-Regular", size: 14))
                                    .foregroundStyle(.white)
                                
                                Button("View Task") {
                                    
                                }
                                .frame(width: 111,height: 38)
                                .background(Color(hex: "ffffff"))
                                .foregroundStyle(Color(hex: "5F33E1"))
                                .font(.custom("LexendDeca-SemiBold", size: 14))
                                .cornerRadius(9)
                                
                            }
                            .padding()
                            Spacer()
                            progressRingView()
                                .padding(.top,30)
                            Spacer()
                            Image("more")
                                .padding(.top)
                            Spacer()
                            
                        }
                        
                    }
                    .frame(width: 331,height: 146)
                    .background(Color(hex: "5F33E1"))
                    .cornerRadius(24)
                    
                    HStack{
                        Text("In Progress")
                            .font(.custom("LexendDeca-SemiBold", size: 19))
                        ZStack {
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color(hex: "EEE9FF"))
                            
                            Text("6")
                                .font(.custom("LexendDeca-Regular", size: 11))
                                .foregroundColor(Color(hex: "5F33E1"))
                        }
                        Spacer()
                    }
                    .padding()
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:20){
                            horizontalListView(title: "Office Project", subtitle: "Grocery shopping app design", icon: "briefcase", bgColor: Color(hex: "E7F3FF"), progressColor: Color(hex: "0087FF"))
                            
                            horizontalListView(title: "Personal Project", subtitle: "Uber Eats redesign challange", icon: "book", bgColor: Color(hex: "FFE9E1"), progressColor: Color(hex: "FF7D53"))
                            
                            horizontalListView(title: "Office Project", subtitle: "Grocery shopping app design", icon: "briefcase", bgColor: Color(hex: "E7F3FF"), progressColor: Color(hex: "0087FF"))
                            
                            horizontalListView(title: "Personal Project", subtitle: "Uber Eats redesign challange", icon: "book", bgColor: Color(hex: "FFE9E1"), progressColor: Color(hex: "FF7D53"))
                            
                        }
                        .padding(.horizontal,20)
                    }
                    
                    HStack{
                        Text("Task Groups")
                            .font(.custom("LexendDeca-SemiBold", size: 19))
                        ZStack {
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundStyle(Color(hex: "EEE9FF"))
                            
                            Text("4")
                                .font(.custom("LexendDeca-Regular", size: 11))
                                .foregroundColor(Color(hex: "5F33E1"))
                        }
                        Spacer()
                    }
                    .padding()
                    
                    VStack(spacing:16){
                        listView(background: Color(hex: "FFE4F2"), image: "briefcase", name: "Office Projects", tasks: "23 Tasks", percentage: 77,progress: 0.70,progressLabel: "70",ringColor: Color(hex: "FFE4F2"),ringOpacityColor: Color(hex: "F478B8"))
                        
                        listView(background: Color(hex: "EDE4FF"), image: "icon", name: "Personal Project", tasks: "30 Tasks", percentage: 50,progress: 0.52,progressLabel: "52",ringColor: Color(hex: "EDE4FF"),ringOpacityColor: Color(hex: "9260F4"))

                        listView(background: Color(hex: "FFE6D4"), image: "book", name: "Daily Study", tasks: "30 Tasks", percentage: 87,progress: 0.87,progressLabel: "87",ringColor: Color(hex: "FFE6D4"),ringOpacityColor: Color(hex: "FF9142"))

                        listView(background: Color(hex: "FFE4F2"), image: "briefcase", name: "Office Projects", tasks: "23 Tasks", percentage: 77,progress: 0.70,progressLabel: "70",ringColor: Color(hex: "FFE4F2"),ringOpacityColor: Color(hex: "F478B8"))
                        
                        listView(background: Color(hex: "EDE4FF"), image: "icon", name: "Personal Project", tasks: "30 Tasks", percentage: 50,progress: 0.52,progressLabel: "52",ringColor: Color(hex: "EDE4FF"),ringOpacityColor: Color(hex: "9260F4"))

                        listView(background: Color(hex: "FFE6D4"), image: "book", name: "Daily Study", tasks: "30 Tasks", percentage: 87,progress: 0.87,progressLabel: "87",ringColor: Color(hex: "FFE6D4"),ringOpacityColor: Color(hex: "FF9142"))
                    }
                }
                .padding(.bottom, 100) /// IMPORTANT so content isn't covered by tab bar
            }
            .padding(.horizontal)
            .navigationBarBackButtonHidden(true)

        }
        
    }
}

    #Preview {
        homeScreen(selectedTab: .constant(1))
    }

