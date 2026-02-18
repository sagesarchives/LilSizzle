//
//  PotSuccessScreenView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/17/26.
//

import SwiftUI

struct PotSuccessScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.sizzleCream
                    .ignoresSafeArea()
                
                VStack {
                    Text("Way to go, let's keep cooking!")
                        .font(.custom("Marker Felt", size: 40))
                        .padding(.top)
                    
                    Image("churros")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    
                        HStack (spacing: 40) {
                            NavigationLink(destination: ComingSoonScreen()) {
                                Text("Next Recipe")
                                    .font(.custom("Marker Felt", size: 40))
                                    .foregroundColor(.white)
                                    .tint(.sizzleBrown)
                                    .padding()
                                    .padding(.horizontal,20)
                                    .background(
                                        Color.sizzleBrown
                                            .cornerRadius(30)
                                            .shadow(radius: 10)
                                    ) // background ending brace
                            } // navlink ending brace
                        
                        NavigationLink(destination: RecipeBookView()) {
                            Text ("Recipe Book")
                                .font(.custom("Marker Felt", size: 40))
                                .foregroundColor(.white)
                                .tint(.sizzleBrown)
                                .padding()
                                .padding(.horizontal,20)
                                .background(
                                    Color.sizzleBrown
                                        .cornerRadius(30)
                                        .shadow(radius: 10)
                                ) // background ending brace
                        } // navlink ending brace
                    } // hstack ending brace
                } // vstack ending brace
            } // zstack ending brace
        } // navstack ending brace
    } // var body ending brace
}

#Preview {
    PotSuccessScreen()
}
