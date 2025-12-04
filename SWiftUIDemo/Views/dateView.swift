//
//  dateView.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 28/11/25.
//

import SwiftUI

struct dateView: View {
    var month : String
    var date : String
    var day : String
    var backGroundColor = Color(hex: "ffffff")
    var textColor = Color(hex: "000000")
    var isSelected : Bool = false
    
    var body: some View {
        HStack{
            VStack(spacing: 8){
                Text(month)
                    .font(.custom("LexendDeca-Regular", size: 11))
                Text(date)
                    .font(.custom("LexendDeca-SemiBold", size: 19))
                Text(day)
                    .font(.custom("LexendDeca-Regular", size: 11))


            }
            .padding(.vertical)
            .foregroundStyle(isSelected ? .white : .black)
        }
        .frame(width: 64,height: 84)
        .background(isSelected ? Color(hex: "5F33E1") : Color(hex: "EDE8FF"))
        .cornerRadius(15)
        .shadow(color: Color(hex: "000000").opacity(0.04), radius: 32,y: 4)
    }
}

#Preview {
    dateView(month: "Nov", date: "28", day: "Fri")
}
