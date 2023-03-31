//
//  MealName.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 31.03.2023.
//

import SwiftUI

struct MealNameView: View {
    let meal: Meal
    
    var body: some View {
        Text(meal.name)
            .bodyStyle()
    }
}

struct MealName_Previews: PreviewProvider {
    static var previews: some View {
        MealNameView(meal: Meal.example)
    }
}
