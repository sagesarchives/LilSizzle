//
//  ChurrosSuccessView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/4/26.
//

import SwiftUI

struct SuccessScreenView: View {
    let finishedRecipe: String
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.sizzleCream
                    .ignoresSafeArea()
                
                VStack {
                    Text("Way to go, let's keep cooking!")
                        .font(.custom("Marker Felt", size: 40))
                        .padding(.top)
                    
                    Image(finishedRecipe)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    
                    HStack (spacing: 40) {
                        NavigationLink(destination: RecipeCardView(recipeCard: "churrosRecipeCard")) {
                            Text("Next")
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
                            Text ("Home")
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
} // struct ending brace

#Preview {
    SuccessScreenView(finishedRecipe: "elotes")
}
#Preview {
    SuccessScreenView(finishedRecipe: "churros")
}

