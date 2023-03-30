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
    
    static let example = Meal(id: UUID(), name: "Example meal", price: 6.69, popularityRank: 25, mealWeight: "350/40/60", ingredients: "")
}
