//
//  MenuSection.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 29.03.2023.
//

import Foundation

struct MenuSectionModel: Codable, Identifiable {
    let id: UUID
    let name: String
    var meal: [MealModel]
    
    var type: MealType {
        switch name {
        case "Food": return .food
        case "Drinks": return .drinks
        case "Dessert": return .dessert
        default: return .unknown
        }
    }

    static var example = MenuSectionModel(id: UUID(),
                                          name: "Dessert",
                                          meal: [MealModel.example])

}

extension MenuSectionModel {

    enum MealType {
        case food
        case drinks
        case dessert
        case unknown
    }
}
