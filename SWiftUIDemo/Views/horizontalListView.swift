//
//  horizontalListView.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 26/11/25.
//

import SwiftUI

struct horizontalListView: View {
    var title: String
    var subtitle: String
    var icon: String
    var bgColor: Color
    var progressColor: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            // Top row
            HStack {
                Text(title)
                    .font(.custom("LexendDeca-Regular", size: 14))
                    .foregroundColor(Color(hex: "6E6A7C"))
                
                Spacer()
                
                Image(icon)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(8)
                    .background(Color(hex: "FFE4F2"))
                    .cornerRadius(10)
                    .shadow(color: Color(hex: "000000").opacity(0.25), radius: 4,x: 0,y: 4)
            }
            
            Text(subtitle)
                .font(.custom("LexendDeca-Regular", size: 20))
                .foregroundColor(.black)
                .fixedSize(horizontal: false, vertical: true)
            
            // Progress bar
            ZStack(alignment: .leading) {
                Capsule()
                    .frame(height: 8)
                    .foregroundColor(.white)
                
                Capsule()
                    .frame(width: 120, height: 8)   // progress width
                    .foregroundColor(progressColor)
            }
        }
        .padding()
        .frame(width: 300, height: 200)
        .background(bgColor)
        .cornerRadius(25)
    }
}

#Preview {
    horizontalListView( title: "Office Project",
                        subtitle: "Grocery shopping app design",
                        icon: "bagIcon",
                        bgColor: Color(hex: "DDF1FF"),
                        progressColor: Color(hex: "0D6EFD"))
}
