//
//  ComingSoonScreenView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/17/26.
//

import SwiftUI

struct ComingSoonScreen: View {
    @State var headerPos = CGPoint(x: 1000, y: 580)
    @State var sizzlePos = CGPoint(x: 630, y: 1030)
    @State var textBubblePos = CGPoint(x: 1280, y: 750)
    @State var textPos = CGPoint(x: 1265, y: 725)
    @State var buttonPos = CGPoint(x: 1020, y: 1400)

    
    @State var countDownPos = CGPoint(x: 630, y: 630)

    var body: some View {
        NavigationStack {
            ZStack {
                Image("wrinkledPaper")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 2000, height: 2000)
                Image("betaMessage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 930, height: 930)
                    .position(headerPos)
                
                Image("smilingSizzle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 480, height: 480)
                    .padding(.top, 75)
                    .position(sizzlePos)
                
                ZStack {
                    Image("textBubble")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 680, height: 680)
                        .position(textBubblePos)
                    Text("""
                     \"Good job completing the 
                        beta version of Lil' Sizzle! 
                        More recipes coming soon!\"
                    """)
                    .font(.custom("Marker Felt", size: 55))
                    .multilineTextAlignment(.center)
                    .position(textPos)
                } // text bubble zstack ending brace
                .padding(.top, 125)
                
                NavigationLink (destination: LandingPage()) {
                    Text("Exit")
                        .font(.custom("Marker Felt", size: 50))
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.sizzleBrown
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        ) // background ending brace
                } // navlink ending brace
                .position(buttonPos)
            } // zstack ending brace
        } // navstack ending brace
        .navigationBarBackButtonHidden()
    } // var body ending brace
} // struct ending brace

#Preview {
    ComingSoonScreen()
}
