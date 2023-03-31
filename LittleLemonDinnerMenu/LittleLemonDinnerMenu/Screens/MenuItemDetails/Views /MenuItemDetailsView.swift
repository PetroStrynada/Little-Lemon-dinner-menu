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
            VStack {
                Image(meal.image)
                    .resizable()
                    .scaledToFit()
                
                Text("Price:")
                    .headerStyle()

                Text("\(meal.price.removeZerosFromEnd()) USD")
                    .bodyStyle()
                
                //.removeZerosFromEnd()
                
                Text("Popularity rank:")
                    .headerStyle()
                
                Text("\(meal.popularityRank)")
                    .bodyStyle()
                
                Text("Ingredients:")
                    .headerStyle()
                
                Text(meal.ingredients)
                    .bodyStyle()
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
            .navigationTitle(meal.name)
        }
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(meal: Meal.example)
    }
}
