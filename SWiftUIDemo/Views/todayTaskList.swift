//
//  todayTaskList.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 28/11/25.
//

import SwiftUI

struct todayTaskList: View {
    var name : String
    var definition : String
    var time : String
    var progress : String
    var progressFontColor : Color
    var progressBackgroundColor : Color
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Text(name)
                        .font(.custom("LexendDeca-Regular", size: 11))
                        .foregroundStyle(Color(hex: "6E6A7C"))
                    Spacer()
                    ZStack{
                        Image("briefcase")
                            .frame(width: 20,height: 20)
                        
                    }
                    .frame(width: 24,height: 24)
                    .background(Color(hex: "FFE4F2"))
                    .cornerRadius(7)
                    
                    
                    
                }
                
                Text(definition)
                    .font(.custom("LexendDeca-Regular", size: 14))
                
                HStack{
                    Image("time")
                    Text(time)
                        .font(.custom("LexendDeca-Regular", size: 11))
                        .foregroundStyle(Color(hex: "AB94FF"))
                        .padding(.leading,-5)
                    Spacer()
                    
                    VStack{
                        Text(progress)
                            .font(.custom("LexendDeca-Regular", size: 9))
                    }
                    .padding(.vertical,2)
                    .padding(.horizontal,6)
                    .background(progressBackgroundColor)
                    .cornerRadius(7)
                    .foregroundStyle(progressFontColor)
                    
                    
                }

                
            }
            .padding(.horizontal)
        }
        .frame(height: 94)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(hex: "000000").opacity(0.04), radius: 32,y: 4)
    }
}

#Preview {
    todayTaskList(name: "Grocery shopping app design", definition: "Market Research", time: "10:00 AM", progress: "In Progress", progressFontColor: Color(hex: "5F33E1"), progressBackgroundColor: Color(hex: "EDE8FF"))
}
