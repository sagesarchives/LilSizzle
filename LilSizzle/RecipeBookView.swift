//
//  Holder.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 1/30/26.
//

import SwiftUI

struct RecipeBookView: View {
    @State private var cornIsForward = false
    @State private var churrosIsForward = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("recipeBook")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1390, height: 1390)
                    .padding(.bottom, 10)
                
                // Elotes
                VStack (spacing: -60) {
                  Image("streetCornLabel")
                        .padding(.trailing, 615)
                        .padding(.bottom, 55)
                    Image(cornIsForward ? "elotes" : "elotes")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 320)
                        .padding(.trailing, 620)
                    
                        .scaleEffect(cornIsForward ? 1.0 : 1.0)
                        .shadow(
                            color: Color.black.opacity(cornIsForward ? 0.3 : 0.1),
                            radius: cornIsForward ? 40 : 10,
                            x: 0,
                            y: cornIsForward ? 30 : 5
                        ) // shadow ending parenthesis
                    
                        .zIndex(cornIsForward ? 1 : 0)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                                churrosIsForward = false
                                cornIsForward.toggle()
                            } // with animation ending brace
                        } // on tap ending brace
                    
                    if cornIsForward == true {
                        NavigationLink(destination: RecipeCardView(recipeCard: "eloteRecipeCard")) {
                            ZStack {
                               Image("cook")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 250, height: 250)
                                    .shadow(radius: 2)
                            } // zstack ending brace
                            .padding(.trailing, 600)
                        } // navlink ending brace
                    } // if statement ending brace
                } // elotes vstack ending brace
                .padding(.top, 100)
                
                // Churros
                VStack (spacing: -60) {
                    Image("churrosLabel")
                        .padding(.leading, 615)
                        .padding(.bottom, 30)
                    Image(churrosIsForward ? "churros" : "churros")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 320, height: 320)
                        .padding(.leading, 620)
                    
                        .scaleEffect(churrosIsForward ? 1.0 : 1.0)
                        .shadow(
                            color: Color.black.opacity(churrosIsForward ? 0.3 : 0.1),
                            radius: churrosIsForward ? 40 : 10,
                            x: 0,
                            y: churrosIsForward ? 30 : 5
                        ) // shadow ending parenthesis
                    
                        .zIndex(churrosIsForward ? 1 : 0)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                                cornIsForward = false
                                churrosIsForward.toggle()
                            } // with animation ending brace
                        } // on tap ending brace
                    
                    if churrosIsForward == true {
                        NavigationLink(destination: RecipeCardView(recipeCard: "churrosRecipeCard")) {
                            ZStack {
                               Image("cook")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 250, height: 250)
                                    .shadow(radius: 2)
                            } // zstack ending brace
                            .padding(.leading, 630)
                        } // navlink ending brace
                    } // if statement ending brace
                } // churros ending brace
                .padding(.top, 100)
            } // zstack ending brace
        } // navstack ending brace
        .navigationBarBackButtonHidden(true)
    } // var body ending brace
} // struct ending brace

#Preview {
    RecipeBookView()
}
