//
//  listView.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 27/11/25.
//

import SwiftUI

struct listView: View {
    var background : Color
    var image : String
    var name : String
    var tasks : String
    var percentage : Int
    var progress : Double
    var progressLabel : String
    var ringColor : Color
    var ringOpacityColor : Color
    
    
    var body: some View {
        VStack{
            HStack{
                HStack{
                 Image(image)
                        .frame(width: 20,height: 20)
                }
                .frame(width: 34,height: 34)
                .background(background)
                .cornerRadius(9)
                
                VStack(alignment:.leading){
                    Text(name)
                        .font(.custom("LexendDeca-Regular", size: 14))
                    Text(tasks)
                        .font(.custom("LexendDeca-Regular", size: 11))
                        .foregroundStyle(Color(hex: "6E6A7C"))
                }
                Spacer()
                
                listRingView(progress: progress, progressLabel: progressLabel, ringColor: ringColor, ringOpacityColor: ringOpacityColor)
            }
        }
        .padding()
        .frame(width: 331,height: 66)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(hex: "000000").opacity(0.1), radius: 32,x: 0,y: 4)
    }
}

#Preview {
    listView(background: Color(hex: "FFE4F2"), image: "briefcase", name: "Office Projects", tasks: "23 Tasks", percentage: 77,progress: 0.70,progressLabel: "70",ringColor: Color(hex: "FFE4F2"),ringOpacityColor: Color(hex: "F478B8"))
}
