//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 30.03.2023.
//

import SwiftUI


struct MenuItemsOptionView: View {
    @EnvironmentObject var menu: Menu
    @Environment(\.dismiss) var dismiss
    
    @State var showAllSections = true
    @State var showSectionFood = false
    @State var showSectionDrink = false
    @State var showSectionDeserts = false
    
    enum menuCategories {
        case none, food, drink, dessert
    }
    
    enum menuItemsBy {
        case none, mostPopular, price, alphabeticalOrder
    }
    
    var body: some View {
        NavigationView {
            List {
                Section("SELECTED CATEGORIES") {
                    Toggle("Food", isOn: $showSectionFood)
                    Text("")
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text("Hello, World!")
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                Section("SORT BY") {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    Text("Hello, World!")
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
            }
            .toolbar { doneAndDismissButton }
            .listStyle(.grouped)
            .navigationTitle("Filter")
        }
    }
    
    var doneAndDismissButton: some View {
        Button {
            dismiss()
        } label: {
            Text("Done")
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
            .environmentObject(Menu())
    }
}
