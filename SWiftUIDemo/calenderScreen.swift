//
//  calenderScreen.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 27/11/25.
//

import SwiftUI

struct calenderScreen: View {
    @Binding var selectedTab: Int
    @State private var selectedDateIndex: Int = 2
    @State private var selectedFilterIndex: Int = 0
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack(alignment: .bottom){
            Image("home")
                .resizable()
                .onTapGesture {
                    dismiss()
                }
            ScrollView(showsIndicators: false){
                VStack(spacing: 32) {
                    HStack(spacing:80){
                        Image("left")
                        Text("Today's Task")
                            .font(.custom("LexendDeca-SemiBold", size: 19))
                        Image("notification")
                        
                    }
                    .padding(.top)
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 12){
                            dateView(month: "Nov", date: "28", day: "Fri",
                                     isSelected: selectedDateIndex == 0)
                                   .onTapGesture { selectedDateIndex = 0 }
                               
                               dateView(month: "Nov", date: "29", day: "Sat",
                                        isSelected: selectedDateIndex == 1)
                                   .onTapGesture { selectedDateIndex = 1 }
                               
                               dateView(month: "Nov", date: "30", day: "Sun",
                                        isSelected: selectedDateIndex == 2)
                                   .onTapGesture { selectedDateIndex = 2 }

                               dateView(month: "Dec", date: "01", day: "Mon",
                                        isSelected: selectedDateIndex == 3)
                                   .onTapGesture { selectedDateIndex = 3 }

                               dateView(month: "Dec", date: "02", day: "Tue",
                                        isSelected: selectedDateIndex == 4)
                                   .onTapGesture { selectedDateIndex = 4 }

                               dateView(month: "Dec", date: "03", day: "Wed",
                                        isSelected: selectedDateIndex == 5)
                                   .onTapGesture { selectedDateIndex = 5 }

                               dateView(month: "Dec", date: "04", day: "Thu",
                                        isSelected: selectedDateIndex == 6)
                                   .onTapGesture { selectedDateIndex = 6 }

                               dateView(month: "Dec", date: "05", day: "Fri",
                                        isSelected: selectedDateIndex == 7)
                                   .onTapGesture { selectedDateIndex = 7 }

                               dateView(month: "Dec", date: "06", day: "Sat",
                                        isSelected: selectedDateIndex == 8)
                                   .onTapGesture { selectedDateIndex = 8 }                        }
                        .onTapGesture {
                            
                        }
                    }
                    
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 12){
                            filterView(title: "All",backgroundColor: Color(hex: "5F33E1"),textColor: Color.white,isSelected: selectedFilterIndex == 0).onTapGesture {
                                selectedFilterIndex = 0
                            }
                            filterView(title: "To do",isSelected: selectedFilterIndex == 1).onTapGesture {
                                selectedFilterIndex = 1
                            }
                            filterView(title: "In Progress",isSelected: selectedFilterIndex == 2).onTapGesture {
                                selectedFilterIndex = 2
                            }

                            filterView(title: "Cancelled",isSelected: selectedFilterIndex == 3).onTapGesture {
                                selectedFilterIndex = 3
                            }

                            filterView(title: "Pending",isSelected: selectedFilterIndex == 4).onTapGesture {
                                selectedFilterIndex = 4
                            }

                            filterView(title: "Completed",isSelected: selectedFilterIndex == 5).onTapGesture {
                                selectedFilterIndex = 5
                            }

                        }
                        .padding(.leading)
                    }
                    
                    ScrollView(showsIndicators: false){
                        VStack{
                            todayTaskList(name: "Grocery shopping app design", definition: "Market Research", time: "10:00 AM", progress: "Done", progressFontColor: Color(hex: "5F33E1"), progressBackgroundColor: Color(hex: "EDE8FF"))
                            
                            todayTaskList(name: "Grocery shopping app design", definition: "Competitive Analysis", time: "12:00 PM", progress: "In Progress", progressFontColor: Color(hex: "FF7D53"), progressBackgroundColor: Color(hex: "FFE9E1"))
                            
                            todayTaskList(name: "Uber Eats redesign challange", definition: "Create Low-fidelity Wireframe", time: "07:00 PM", progress: "To do", progressFontColor: Color(hex: "0087FF"), progressBackgroundColor: Color(hex: "E3F2FF"))
                            
                            todayTaskList(name: "About design sprint", definition: "How to pitch a Design Sprint", time: "09:00 PM", progress: "To do", progressFontColor: Color(hex: "0087FF"), progressBackgroundColor: Color(hex: "E3F2FF"))
                            
                            todayTaskList(name: "Grocery shopping app design", definition: "Market Research", time: "10:00 AM", progress: "Done", progressFontColor: Color(hex: "5F33E1"), progressBackgroundColor: Color(hex: "EDE8FF"))
                            
                            todayTaskList(name: "Grocery shopping app design", definition: "Competitive Analysis", time: "12:00 PM", progress: "In Progress", progressFontColor: Color(hex: "FF7D53"), progressBackgroundColor: Color(hex: "FFE9E1"))
                            
                            todayTaskList(name: "Uber Eats redesign challange", definition: "Create Low-fidelity Wireframe", time: "07:00 PM", progress: "To do", progressFontColor: Color(hex: "0087FF"), progressBackgroundColor: Color(hex: "E3F2FF"))
                            
                            todayTaskList(name: "About design sprint", definition: "How to pitch a Design Sprint", time: "09:00 PM", progress: "To do", progressFontColor: Color(hex: "0087FF"), progressBackgroundColor: Color(hex: "E3F2FF"))
                        }
                        .padding(.horizontal,20)
                    }
                }
                .padding(.bottom,70)
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
            .padding(.horizontal)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    calenderScreen(selectedTab: .constant(1))
}
