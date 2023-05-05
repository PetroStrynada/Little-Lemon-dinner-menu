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
}