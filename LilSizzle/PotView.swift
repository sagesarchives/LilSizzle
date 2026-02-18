//
//  PotView.swift
//  LilSizzle
//
//  Created by Nyla Wilson on 2/3/26.
//

import SwiftUI

    struct PotView: View {
        
        // Setting up variables & booleans
        @State var recipe: Recipe
        @State var flameCount = 0
        @State var correctCount = 0
        @State var shouldShowRecipe: Bool = false
        @State var xPosPot: CGFloat = 920
        @State var yPosPot: CGFloat = 620
        
        let recipeCard: String
        
        // Top tab bar positioning
        @State var homeButtonPos = CGPoint(x: 80, y: 245)
        @State var recipeButtonPos = CGPoint(x: -5, y: 245)
        @State var flamesPos = CGPoint(x: 1260, y: 245)
        
        // Array variable
        @State var completed: Set<Ingredient> = []

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
                        .buttonStyle(.plain)
                        
                        Button {
                            shouldShowRecipe = true
                        } label: {
                            Image("recipeButton")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170, height: 170)
                                .position(recipeButtonPos)
                        } // label ending brace
                        .buttonStyle(.automatic)
                        .sheet(isPresented: $shouldShowRecipe) {
                            ChurrosRecipeCardPopUp()
                                .presentationBackground(.sizzleBrown)
                        } // sheet ending brace
                    } // hstack ending brace
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
                        
                        Image("pot")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 750, height: 750)
                            .position(x: self.xPosPot, y: self.yPosPot)
                        
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
                                    }) // on ended ending brace
                            ) // gesture ending brace
                    } // for each ending brace
                    
                    .overlay {
                        if correctCount == 5 {
                            PotSuccessScreen()
                        }
                        
                        if flameCount == 3 {
                            PotFailureScreen()
                        }
                    } // overlay ending brace
                    
                } // zstack ending brace ending brace
            } // navstack ending brace
            .navigationBarBackButtonHidden()
        } // var body ending brace
        
        func checkIngredientCollision(ingredient: Ingredient) {
                if abs(self.xPosPot - ingredient.xPos) < 200 && abs(self.yPosPot - ingredient.yPos) < 200 {
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

struct ChurrosRecipeCardPopUp: View {
    var body: some View {
        VStack (spacing: -90) {
            Image("churrosRecipeCard")
                .resizable()
                .scaledToFit()
                .frame(width: 600, height: 600)
                .padding(.leading, 45)
            
            Image("pawPrint")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 50)
                .frame(width: 150, height: 150)
        } // vstack ending brace
        .padding(.bottom, 40)
    } // var body ending brace
} // struct ending brace

#Preview {
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
    PotView(recipe: churros, recipeCard: "churrosRecipeCard")
}
