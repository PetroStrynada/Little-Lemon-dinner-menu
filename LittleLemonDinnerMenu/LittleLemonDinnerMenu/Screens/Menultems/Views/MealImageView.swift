//
//  MealImage.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 31.03.2023.
//

import SwiftUI

struct MealImageView: View {
    let meal: Meal
    
    var body: some View {
        Image(meal.image)
            .resizable()
            .scaledToFit()
    }
}

struct MealImage_Previews: PreviewProvider {
    static var previews: some View {
        MealImageView(meal: Meal.example)
    }
}
