//
//  FailureScreenView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/4/26.
//
//
import SwiftUI

struct SkilletFailureScreen: View {
    
    let elotes = Recipe(
        name: "Street Corn",
        image: "elotes",
        recipeCard: "eloteRecipeCard",
        possibleIngredients: [
            Ingredient(name: "mayoLime", image: "mayoLime", xPos: 118, yPos: 500),
            Ingredient(name: "cornKernels", image: "cornKernels", xPos: 320, yPos: 500),
            Ingredient(name: "cotijaCheese", image: "cotijaCheese", xPos: 118, yPos: 700),
            Ingredient(name: "blackPepper", image: "blackPepper", xPos: 320, yPos: 700),
            Ingredient(name: "oregano", image: "oregano", xPos: 125, yPos: 900),
            Ingredient(name: "beef", image: "beef", xPos: 320, yPos: 900),
            Ingredient(name: "onion", image: "onion", xPos: 320, yPos: 1100),
            Ingredient(name: "lemonJuice", image: "lemonJuice", xPos: 125, yPos: 1100)
        ],
        
        correctIngredients: [
            Ingredient(name: "cornKernels", image: "cornKernels", xPos: 320, yPos: 500),
            Ingredient(name: "mayoLime", image: "mayoLime", xPos: 118, yPos: 500),
            Ingredient(name: "cotijaCheese", image: "cotijaCheese", xPos: 118, yPos: 700)
        ],
    )
        
    var body: some View {
        NavigationStack {
            ZStack {
                Color.sizzleCream
                    .ignoresSafeArea()
                
                VStack {
                    Text("Oh no, you've burnt the food!")
                        .font(.custom("Marker Felt", size: 40))
                        .padding(.top)
                    ZStack {
                        Image("CenterImageFail")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 600, height: 600)
                        
                        HStack (spacing: -4) {
                            Image("FailFlame")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170, height: 170)
                            Image("FailFlame")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 200)
                            Image("FailFlame")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170, height: 170)
                        } // hstack ending brace
                    } // center image zstack ending brace
                    .frame(width: 500, height: 500)
                    
                    NavigationLink (destination: SkilletView(recipe: elotes, recipeCard: "elotesRecipeCard")) {
                        Text("Retry")
                            .font(.custom("Marker Felt", size: 40.0))
                            .minimumScaleFactor(0.5)
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 20)
                            .background(
                                Color.sizzleBrown
                                    .cornerRadius(30)
                                    .shadow(radius: 10)
                            ) // background ending brace
                    } // navlink ending brace
                } // vstack ending brace
            } // zstack ending brace
        } // navstack ending brace
    } // var body ending brace
} // struct ending brace

#Preview {
    SkilletFailureScreen()
}
