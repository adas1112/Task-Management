//
//  filterView.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 28/11/25.
//

import SwiftUI

struct filterView: View {
    var title : String
    var backgroundColor = Color(hex: "EDE8FF")
    var textColor = Color(hex: "5F33E1")
    var isSelected : Bool = false
    var body: some View {
        VStack{
            Text(title)
                .font(.custom("LexendDeca-SemiBold", size: 14))
                .foregroundStyle(isSelected ? .white : .black)
        }
        .padding(.horizontal,24)
        .padding(.vertical,8)
        .background(isSelected ? Color(hex: "5F33E1") : Color(hex: "EDE8FF"))
        .cornerRadius(12)

    }
}

#Preview {
    filterView(title: "All")
}
