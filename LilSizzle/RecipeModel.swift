//
//  Recipe.swift
//  LilSizzle
//
//  Created by Isaac Prieto Levi on 2/11/26.
//

import Foundation

struct Recipe: Equatable, Hashable {
    var name: String
    var image: String
    var recipeCard: String
    var possibleIngredients: [Ingredient]
    var correctIngredients: [Ingredient]
}

struct Ingredient: Equatable, Hashable {
    var name: String
    var image: String
    var xPos: CGFloat
    var yPos: CGFloat
}
