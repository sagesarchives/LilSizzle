//
//  PotFailureScreen.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/17/26.
//

import SwiftUI

struct PotFailureScreen: View {
    
    let churros = Recipe(
        name: "Churros",
        image: "churros",
        recipeCard: "churrosRecipeCard",
        possibleIngredients: [
            Ingredient(name: "water", image: "water", xPos: 118, yPos: 500),
            Ingredient(name: "sugar", image: "sugar", xPos: 320, yPos: 500),
            Ingredient(name: "oil", image: "oil", xPos: 320, yPos: 700),
            Ingredient(name: "flour", image: "flour", xPos: 125, yPos: 900),
            Ingredient(name: "cinnamon", image: "cinnamon", xPos: 320, yPos: 900),
            Ingredient(name: "salt", image: "salt", xPos: 118, yPos: 700),
            Ingredient(name: "egg", image: "egg", xPos: 118, yPos: 1100),
            Ingredient(name: "oatMilk", image: "oatMilk", xPos: 330, yPos: 1100),
        ],
        
        correctIngredients: [
            Ingredient(name: "water", image: "water", xPos: 118, yPos: 500),
            Ingredient(name: "sugar", image: "sugar", xPos: 320, yPos: 500),
            Ingredient(name: "oil", image: "oil", xPos: 320, yPos: 700),
            Ingredient(name: "flour", image: "flour", xPos: 125, yPos: 900),
            Ingredient(name: "cinnamon", image: "cinnamon", xPos: 320, yPos: 900),
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
                    
                    NavigationLink (destination: PotView(recipe: churros, recipeCard: "churrosRecipeCard")) {
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
    PotFailureScreen()
}
