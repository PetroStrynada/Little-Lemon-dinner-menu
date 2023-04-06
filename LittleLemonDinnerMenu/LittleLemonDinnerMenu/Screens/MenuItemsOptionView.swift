//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 30.03.2023.
//

import SwiftUI


struct MenuItemsOptionView: View {
    @EnvironmentObject var menu: Menu
    @EnvironmentObject var menuOption: MenuOption
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            List {
                Section("SELECTED CATEGORIES") {
                    foodFilterButton
                    drinkFilterButton
                    dessertFilterButton
                }
            
                Section("SORT BY") {
                    sortByPopularButton
                    sortByPriceButton
                    sortByABCButton
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
    
    func checkMark(menuOptionSection: Bool) -> Image {
        switch menuOptionSection {
        case true:
            return Image(systemName: "checkmark")
        default:
            return Image("")
        }
    }
    
    //MARK: - Buttons for "SELECTED CATEGORIES"
    
    var foodFilterButton: some View {
        Button {
            menuOption.showFoodSection()
        } label: {
            HStack {
                Text("Food")
                    .bodyStyle()
                Spacer()
                checkMark(menuOptionSection: menuOption.sectionFood)
                    .imageForegroundColor()
            }
        }
    }
    
    var drinkFilterButton: some View {
        Button {
            menuOption.showDrinkSection()
        } label: {
                HStack {
                    Text("Drink")
                        .bodyStyle()
                    Spacer()
                    checkMark(menuOptionSection: menuOption.sectionDrink)
                        .imageForegroundColor()
            }
        }
    }

    var dessertFilterButton: some View {
        Button {
            menuOption.showDessertsSection()
        } label: {
                HStack {
                    Text("Dessert")
                        .bodyStyle()
                    Spacer()
                    checkMark(menuOptionSection: menuOption.sectionDesserts)
                        .imageForegroundColor()
            }
        }
    }

    //MARK: - Buttons for "SORT BY"

    var sortByPopularButton: some View {
        Button {
            menuOption.showSortByPopular()
        } label: {
                HStack {
                    Text("Most Popular")
                        .bodyStyle()
                    Spacer()
                    if menuOption.sortByPopular == true {
                        showCheckMark()
                }
            }
        }
    }

    //MARK: - fix the logic of the button
    var sortByPriceButton: some View {
        Button {
            menuOption.showSortByPrice()
        } label: {
                HStack {
                    Text("Price $-$$$")
                        .bodyStyle()
                    Spacer()
                    if menuOption.sortByPrice == true {
                    Image(systemName: "checkmark")
                        .imageForegroundColor()
                }
            }
        }
    }

    //MARK: - fix the logic of the button
    var sortByABCButton: some View {
        Button {
            menuOption.showSortByABC()
        } label: {
                HStack {
                    Text("A-Z")
                        .bodyStyle()
                    Spacer()
                    if menuOption.sortByABC == true {
                        showCheckMark()
                }
            }
        }
    }
    
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
            .environmentObject(Menu())
            .environmentObject(MenuOption())
    }
}
