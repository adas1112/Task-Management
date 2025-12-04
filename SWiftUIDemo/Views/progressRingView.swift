//
//  progressRingView.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 26/11/25.
//

import SwiftUI

import SwiftUI

struct progressRingView: View {
    var progress: Double = 0.75   // 85%

    var body: some View {
        ZStack {
            // Background Circle
            Circle()
                .stroke(
                    Color.white.opacity(0.3),
                    style: StrokeStyle(lineWidth: 20)
                )

            // Progress Circle
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    Color(hex: "EEE9FF")
                    ,
                    style: StrokeStyle(
                        lineWidth: 20,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(20)) // start from top

            // Percentage Text
            Text("85%")
                .font(.custom("LexendDeca-Regular", size: 14))
                .foregroundColor(.white)
        }
        .frame(width: 80, height: 80)
        .background(Color(hex: "5F33E1"))  // purple background
        .clipShape(Circle())
    }
}

struct listRingView: View {
    var progress: Double
    var progressLabel : String
    var ringColor : Color
    var ringOpacityColor : Color

    var body: some View {
        ZStack {
            // Background Circle
            Circle()
                .stroke(
                    ringColor,
                    style: StrokeStyle(lineWidth: 10)
                )

            // Progress Circle
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    ringOpacityColor
                    ,
                    style: StrokeStyle(
                        lineWidth: 10,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(20)) // start from top

            // Percentage Text
            Text("\(progressLabel)%")
                .font(.custom("LexendDeca-Regular", size: 11))
                .foregroundColor(.black)
        }
        .frame(width: 45, height: 45)
        .background(Color(hex: "ffffff"))  // purple background
        .clipShape(Circle())
    }
}


#Preview {
    listRingView(progress: 0.70, progressLabel: "70", ringColor: Color(hex: "FFE4F2"), ringOpacityColor: Color(hex: "F478B8"))
}
