//
//  AddProjectScreen.swift
//  SWiftUIDemo
//
//  Created by Yash Bhimani on 28/11/25.
//

import SwiftUI

struct addProjectScreen: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Image("home")
                .resizable()
            ScrollView(showsIndicators: false){
                VStack(spacing: 28) {
                    HStack(spacing:80){
                        Image("left")
                        Text("Add Project")
                            .font(.custom("LexendDeca-SemiBold", size: 19))
                        Image("notification")
                        
                    }
                    .padding(.top)
                    
                    
                    VStack{
                        HStack {
                            ZStack{
                                Image("briefcase")
                                    .frame(width: 20,height: 20)
                                
                            }
                            .frame(width: 24,height: 24)
                            .background(Color(hex: "FFE4F2"))
                            .cornerRadius(7)
                            
                            VStack(alignment: .leading){
                                Text("Task Group")
                                    .font(.custom("LexendDeca-Regular", size: 9))
                                    .foregroundStyle(Color(hex: "6E6A7C"))
                                
                                Text("Work")
                                    .font(.custom("LexendDeca-SemiBold", size: 14))
                                    .foregroundStyle(Color(hex: "000000"))

                            }
                            
                            Spacer()
                            
                            Image("down")
                        }
                        .padding()

                    }
                    .frame(height: 63)
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    
                    VStack{
                        HStack {
                            VStack(alignment: .leading){
                                Text("Project Name")
                                    .font(.custom("LexendDeca-Regular", size: 9))
                                    .foregroundStyle(Color(hex: "6E6A7C"))
                                
                                Text("Grocery Shopping App")
                                    .font(.custom("LexendDeca-Regular", size: 14))
                                    .foregroundStyle(Color(hex: "000000"))

                            }
                            
                            Spacer()
                            
                        }
                        .padding()

                    }
                    .frame(height: 63)
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    
                    VStack{
                        HStack {
                            VStack(alignment: .leading,spacing: 12){
                                Text("Description")
                                    .font(.custom("LexendDeca-Regular", size: 9))
                                    .foregroundStyle(Color(hex: "6E6A7C"))
                                
                                Text("This application is designed for super shops. By using this application they can enlist all their products in one place and can deliver. Customers will get a one-stop solution for their daily shopping.")
                                    .font(.custom("LexendDeca-Regular", size: 11))
                                    .foregroundStyle(Color(hex: "000000"))
                                Spacer()

                            }
                            
                            Spacer()
                            
                        }
                        .padding()

                    }
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    VStack{
                        HStack {
                                Image("calendar")
                            
                            VStack(alignment: .leading){
                                Text("Start Date")
                                    .font(.custom("LexendDeca-Regular", size: 9))
                                    .foregroundStyle(Color(hex: "6E6A7C"))
                                
                                Text("01 May, 2025")
                                    .font(.custom("LexendDeca-Regular", size: 14))
                                    .foregroundStyle(Color(hex: "000000"))

                            }
                            
                            Spacer()
                            
                            Image("down")
                        }
                        .padding()

                    }
                    .frame(height: 63)
                    .background(Color.white)
                    .cornerRadius(15)

                    VStack{
                        HStack {
                                Image("calendar")
                            
                            VStack(alignment: .leading){
                                Text("End Date")
                                    .font(.custom("LexendDeca-Regular", size: 9))
                                    .foregroundStyle(Color(hex: "6E6A7C"))
                                
                                Text("30 June, 2025")
                                    .font(.custom("LexendDeca-Regular", size: 14))
                                    .foregroundStyle(Color(hex: "000000"))

                            }
                            
                            Spacer()
                            
                            Image("down")
                        }
                        .padding()

                    }
                    .frame(height: 63)
                    .background(Color.white)
                    .cornerRadius(15)

                    
                    VStack{
                        HStack {
                                Image("grocery")
                            
                            VStack(alignment: .leading,spacing: -3){
                                Text("Grocery")
                                    .font(.custom("Poppins-SemiBoldItalic", size: 14))
                                    .foregroundStyle(Color(hex: "047C78"))
                                
                                Text("Shop")
                                    .font(.custom("Poppins-SemiBoldItalic", size: 14))
                                    .foregroundStyle(Color(hex: "F2582C"))

                            }
                            
                            Spacer()
                            
                            VStack{
                                Text("Change Logo")
                                    .font(.custom("LexendDeca-Regular", size: 11))
                                    .foregroundStyle(Color(hex: "5F33E1"))
                            }
                            .padding(.vertical,8)
                            .padding(.horizontal,16)
                            .background(Color(hex: "EDE8FF"))
                            .cornerRadius(7)
                            
                            
                                
                            
                        }
                        .padding()

                    }
                    .frame(height: 63)
                    .background(Color.white)
                    .cornerRadius(15)

                    Spacer()
                    
                    Button("Add Project",action: {
                        
                    })
                    .frame(width: 331,height: 52)
                    .background(Color(hex: "5F33E1"))
                    .cornerRadius(14)
                    .foregroundStyle(.white)
                    .font(.custom("LexendDeca-SemiBold", size: 19))
                }
                .padding(.horizontal,15)
                .padding(.bottom,60)
                .shadow(color: Color(hex: "000000").opacity(0.04), radius: 32,y: 4)

            }
            .padding(.horizontal)

            .navigationBarBackButtonHidden(true)
        }
    }

}

#Preview {
    addProjectScreen()
}
