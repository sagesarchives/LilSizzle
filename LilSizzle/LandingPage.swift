//
//  LandingPage.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 1/30/26.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1390, height: 1390)
                VStack (spacing: -100) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, height: 500)
                        .shadow(radius: 30)
                    
                    NavigationLink(destination: RecipeBookView()) {
                        Image("start")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                            .shadow(radius: 30)
                    }
                    
                    NavigationLink(destination: CreditsScreen()) {
                        Image("CreditsButton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 270, height: 270)
                            .shadow(radius: 30)
                    }
                    // navlink ending brace
                } // vstack ending brace
            } // zstack ending brace
        }//nav stack ending brace
        .navigationBarBackButtonHidden()
    } // var body ending brace
} // struct ending brace

#Preview {
    LandingPage()
}
