//
//  Meal.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 29.03.2023.
//

import Foundation

struct Meal: Codable, Identifiable {
    let id: UUID
    let name: String
    let price: Double
    let popularityRank: Int
    let mealWeight: String
    let ingredients: String
    
    var image: String {
        name.replacingOccurrences(of: " ", with: "-")
    }
    
    static var example = Meal(id: UUID(), name: "Ukrainian borsch",
                              price: 2.48, popularityRank: 1, mealWeight: "350/20/50",
                              ingredients: "Chicken broth, sous-vide chicken fillet, potatoes, carrots, beets, onions, cabbage, tomato paste, parsley. Served with sour cream, pieces of lard and brown bread with garlic sauce")
}
