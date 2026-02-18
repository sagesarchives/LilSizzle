//
//  StreetCornRecipeView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/3/26.
//

import SwiftUI
import Combine

struct RecipeCardView: View {
    @State private var timeRemaining = 10
    let recipeCard: String
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

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
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1390, height: 1390)
                VStack (spacing: -350) {
                    Image("getReadyLabel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600, height: 600)
                    Image(recipeCard)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 800, height: 800)
                        .padding(.leading, 95)
                        .padding(.bottom, 200)
                    Text("\(timeRemaining)")
                        .font(.system(size:70))
                        .bold()
                        .foregroundColor(.white)
                        .onReceive(timer) { _ in
                            if timeRemaining > 1 {
                                timeRemaining -= 1
                            } // if statement ending brace
                        } // on recieve ending brace
                } // vstack ending brace
                .padding(.bottom, 150)
                
                if timeRemaining == 1 && recipeCard == "eloteRecipeCard" {
                    SkilletView(recipe: elotes, recipeCard: "eloteRecipeCard")
                } else if timeRemaining == 1 && recipeCard == "churrosRecipeCard" {
                    PotView(recipe: churros, recipeCard: "churrosRecipeCard")
                } // if statement ending brace
            } // zstack ending brace
        } //nav stack ending brace
        .navigationBarBackButtonHidden(true)
    } // var body ending brace
} // struct ending brace

#Preview {
    RecipeCardView(recipeCard: "eloteRecipeCard")
}

#Preview {
    RecipeCardView(recipeCard: "churrosRecipeCard")
}
