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
                        .imageStyle()
                    
                    Text(meal.name)
                        .headerStyle()
                    
                    Text("Price:")
                        .headerStyle()

                    Text("\(meal.price.removeZerosFromEnd()) USD")
                        .bodyStyle()
                    
                    Text("Ingredients:")
                        .headerStyle()
                    
                    Text(meal.ingredients)
                        .bodyStyle()
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
