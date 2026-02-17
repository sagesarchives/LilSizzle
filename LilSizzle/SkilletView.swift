//
//  StovetopView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/1/26.
//

import SwiftUI

struct SkilletView: View {
    
    // Setting up variables & booleans
    @State var recipe: Recipe
    @State var flameCount = 0
    @State var correctCount = 0
    @State var shouldShowRecipe: Bool = false
    let recipeCard: String

    // Top tab bar positioning
    @State var xPosSkillet: CGFloat = 900
    @State var yPosSkillet: CGFloat = 620
    @State var homeButtonPos = CGPoint(x: 80, y: 245)
    @State var recipeButtonPos = CGPoint(x: -5, y: 245)
    @State var flamesPos = CGPoint(x: 1260, y: 245)
    
    // Array variable
    @State var completed: Set<Ingredient> = []
    
    // Mascot positioning
    @State var correctMascotPos: CGPoint = CGPoint(x: 1200, y: 800)
    @State var incorrectMascotPos: CGPoint = CGPoint(x: 1200, y: 780)

    var body: some View {
        NavigationStack {
            ZStack {
                Image("stovetop")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1387, height: 1387)

                HStack {
                    NavigationLink (destination: RecipeBookView()) {
                        Image(systemName: "house.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(Color.sizzlePurple)
                            .frame(width: 70, height: 70)
                            .position(homeButtonPos)
                    } // navlink ending brace
                    
                    Button {
                        shouldShowRecipe = true
                    } label: {
                        Image("recipeButton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 170, height: 170)
                            .position(recipeButtonPos)
                    } // label ending brace
                    .sheet(isPresented: $shouldShowRecipe) {
                        RecipeCardPopUp(recipeCard: "eloteRecipecard")
                            .presentationBackground(.sizzleBrown)
                    }
                }
                    HStack {
                        ForEach(0..<3) { index in
                            Image(systemName: "flame.fill")
                                .font(.system(size: 60))
                                .foregroundColor(index < flameCount ? .red : .gray)
                                .opacity(index > flameCount ? 1.0 : 1.0)
                                .animation(.default, value: flameCount)
                        } // for each ending brace
                    } // hstack ending brace
                    .position(flamesPos)
                
// MARK: GAME START
                
                Image("skillet")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 750, height: 750)
                    .position(x: self.xPosSkillet, y: self.yPosSkillet)
                
                ForEach($recipe.possibleIngredients, id: \.name) { $ingredient in
                    Image(ingredient.image)
                        .position(x: ingredient.xPos, y: ingredient.yPos)
                        .gesture (
                            DragGesture()
                                .onEnded({ value in
                                    ingredient.xPos = value.location.x
                                    ingredient.yPos = value.location.y
                                    // troubleshooting needed
                                    if !completed.contains(where: { $0.name == ingredient.name }) {
                                        checkIngredientCollision(ingredient: ingredient)
                                    } // if statement ending brace
                                }) // on changed ending brace
                        ) // gesture ending brace
                } // for each ending brace
                .overlay {
                    if correctCount == 3 {
                        SuccessScreenView(finishedRecipe: "elotes")
                    }
                    
                    if flameCount == 3 {
                        FailureScreenView()
                    }
                } // overlay ending brace
                
//                if correctCount == 1 {
//                    Image("excitedSizzle")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 300, height: 300)
//                        .position(correctMascotPos)
//                } // excited sizzle ending brace
//                
//                if correctCount == 2 {
//                    Image("smilingSizzle")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 300, height: 300)
//                        .position(correctMascotPos)
//                } // smiling sizzle ending brace
//                
//                if flameCount == 1 {
//                    Image("sadSizzle")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 380, height: 380)
//                        .position(correctMascotPos)
//                } // sad sizzle ending brace
//                
//                if flameCount == 2 {
//                    Image("sadSizzle")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 380, height: 380)
//                        .position(correctMascotPos)
//                } // sad sizzle ending brace
                
            } // zstack ending brace
        } // var body ending brace
    } // navstack ending brace
    
    func checkIngredientCollision(ingredient: Ingredient) {
        if abs(self.xPosSkillet - ingredient.xPos) < 200 && abs(self.yPosSkillet - ingredient.yPos) < 200 {
            processTurn(ingredient: ingredient)
        } // if statement ending brace
    } // collision func ending brace
    
    func processTurn(ingredient: Ingredient){
        if self.recipe.correctIngredients.contains(where: { i in
            i.name == ingredient.name
        }) {
            completed.insert(ingredient)
            self.correctCount += 1
            // print("correct! correctCount: \(correctCount)")
        } else {
            completed.insert(ingredient)
            self.flameCount += 1
            // print("wrong! flameCount: \(flameCount)")
        } // if else statement ending brace
    } // process turn ending brace
    
} // struct ending brace


struct RecipeCardPopUp: View {
    let recipeCard: String
    
    var body: some View {
        Image("eloteRecipeCard")
            .resizable()
            .scaledToFit()
            .frame(width: 500, height: 500)
            .padding(.leading, 70)
    }
}

#Preview {
    var elotes = Recipe(
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
    
    SkilletView(recipe: elotes, recipeCard: "eloteRecipeCard")
}
