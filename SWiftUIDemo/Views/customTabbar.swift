//
//  customTabbar.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 27/11/25.
//

import SwiftUI

struct customTabbar: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            // Background curved bar
            HStack {
                Spacer()
            }
            .frame(height: 50)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: "EEE9FF"))
            )
//            .padding(.horizontal, 20)

            
            // Floating center button
            Button(action: {
                selectedTab = 4
            }) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.system(size: 28, weight: .bold))
                    .frame(width: 60, height: 60)
                    .background(Color(hex: "5F33E1"))
                    .clipShape(Circle())
                    .shadow(color: Color(hex: "5F33E1").opacity(0.49), radius: 18, x: 2,y: 10)
            }
            .offset(y: -20)
            
            // Tab bar icons
            HStack(spacing: 40) {
                
                TabBarButton(icon: "homebar", index: 0, selectedTab: $selectedTab)
                TabBarButton(icon: "calendar", index: 1, selectedTab: $selectedTab)
                
                
                Spacer().frame(width: 60)  // Space for center floating button
                
                TabBarButton(icon: "document", index: 2, selectedTab: $selectedTab)
                TabBarButton(icon: "user", index: 3, selectedTab: $selectedTab)
            }
            .padding(.horizontal, 40)
        }
        .padding(.bottom, 0)   // IMPORTANT: remove bottom spacing
        

    }
}

struct TabBarButton: View {
    let icon: String
    let index: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = index
        }) {
            Image(icon)
                .font(.system(size: 22))
                .foregroundStyle(Color(hex: "5F33E1"))
                .shadow(color: selectedTab == index ? Color(hex: "5F33E1").opacity(0.35) : .clear,
                        radius: selectedTab == index ? 6 : 0,
                        x: 0,
                        y: selectedTab == index ? 6 : 0)
        }
    }
}

struct CustomTabBarMain: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                homeScreen(selectedTab: $selectedTab).tag(0)
                calenderScreen(selectedTab: $selectedTab).tag(1)
                Text("Documents").tag(2)
                Text("Users").tag(3)
                
                addProjectScreen().tag(4)
            }

            customTabbar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(.all, edges: .bottom)  // no unwanted spacing
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CustomTabBarMain()
}

