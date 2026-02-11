//
//  Recipe.swift
//  LilSizzle
//
//  Created by Isaac Prieto Levi on 2/11/26.
//

import Foundation

struct Recipe {
    var name: String
    var image: String
    var recipeCard: String
    var possibleIngredients: [Ingredient]
    var correctIngredients: [Ingredient]
    var correctIngredientCount: Int

}

struct Ingredient{
    var name: String
    var image: String
    var xPos: CGFloat
    var yPos: CGFloat
}
