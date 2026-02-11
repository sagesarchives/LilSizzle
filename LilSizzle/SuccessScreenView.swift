//
//  ChurrosSuccessView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/4/26.
//

import SwiftUI

struct SuccessSheetView: View {
    var body: some View {
        ZStack {
//            // 1. Add the background Image first
//            Image("LosingScreenBackground")
//                .resizable() // Allows the image to be resized
//                .scaledToFill() // Scales the image to fill the view, potentially cropping some parts
//                .ignoresSafeArea() // Extends the image to cover the entire screen, including the safe areas
//
//            // 2. Add your main content here (e.g., a VStack with Text and Buttons)
           
            Color.cream
                .ignoresSafeArea()
            VStack{

                Text("Way to go, let's keepk cooking!")
                    .font(.custom("Marker Felt", size: 40.0))
//                    .frame(width:900, height: 100)
//                    .background()
                    .padding(.top)
                    ZStack {
                       
                        Image("Rectangle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500)
                        VStack{
                            
                            HStack{
                                Image("churros 1")
                                    .resizable()
                                    .scaledToFit()
                              
                            }
                            .frame(width: 300, height: 400)
                        }
                        .padding()
                    }
                
                .padding()
                HStack{
                    Button {
                        
                    } label: {
                        Text ("Next")
                            .font(.custom("Marker Felt", size: 40.0))
                            .minimumScaleFactor(0.5)
                    }
                    .foregroundColor(.white)
//                    .buttonStyle(.borderedProminent)
                    .tint(.sizzleBrown)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.sizzleBrown
                            .cornerRadius(30)
                            .shadow(radius: 10)
                    )
                    Button {
                        
                    } label: {
                        Text ("Home")
                            .font(.custom("Marker Felt", size: 40.0))
                            .minimumScaleFactor(0.5)
                    }
                    .foregroundColor(.white)
//                    .buttonStyle(.borderedProminent)
                    .tint(.sizzleBrown)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.sizzleBrown
                            .cornerRadius(30)
                            .shadow(radius: 10)
                    )
                   
                }
            }
        }
    }
        }
   
#Preview {
    SuccessSheetView()
}
