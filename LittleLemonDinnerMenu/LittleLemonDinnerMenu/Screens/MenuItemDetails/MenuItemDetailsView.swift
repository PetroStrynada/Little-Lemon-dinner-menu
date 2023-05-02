//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 30.03.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    let meal: Meal
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 5) {
                    Image(meal.image)
                        .imageStyleResizableScaledToFit()
                    
                    Text(meal.name)
                        .customFont(.header)
                    
                    Text("Price:")
                        .customFont(.header)

                    Text("\(meal.price.doubleNumberFormattedToString(minimumFractionDigits: 2)) USD")
                        .customFont(.body)
                    
                    Text("Ingredients:")
                        .customFont(.header)
                    
                    Text(meal.ingredients)
                        .customFont(.body)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 200)
                    
                    Spacer()
                }
            }
        }
        .navigationTitle("Ranking \(meal.popularityRank)")
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(meal: Meal.example)
    }
}
