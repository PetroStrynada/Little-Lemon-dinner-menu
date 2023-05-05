//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 30.03.2023.
//

import SwiftUI


struct MenuItemsOptionView: View {

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
    
    func showingCheckMark(forCondition menuOptionSection: Bool) -> some View {
        guard menuOptionSection else { return Image("") }
        return Image(systemName: "checkmark")
    }
    
    //MARK: - Buttons for "SELECTED CATEGORIES"
    
    //Повторення коду. Створити одну кнопку
    
    var foodFilterButton: some View {
        Button {
            menuOption.sectionFood.toggle()
        } label: {
            HStack {
                Text("Food")
                Spacer()
                showingCheckMark(forCondition: menuOption.sectionFood)
            }
        }
        .customFont(.body)
    }
    
    var drinkFilterButton: some View {
        Button {
            menuOption.sectionDrink.toggle()
        } label: {
            HStack {
                Text("Drink")
                Spacer()
                showingCheckMark(forCondition: menuOption.sectionDrink)
            }
        }
        .customFont(.body)
    }

    var dessertFilterButton: some View {
        Button {
            menuOption.sectionDesserts.toggle()
        } label: {
            HStack {
                Text("Dessert")
                Spacer()
                showingCheckMark(forCondition: menuOption.sectionDesserts)
            }
        }
        .customFont(.body)
    }

    //MARK: - Buttons for "SORT BY"
    
    //Повторення коду. Створити одну кнопку

    var sortByPopularButton: some View {
        Button {
            menuOption.showSortByPopular()
        } label: {
            HStack {
                Text("Most Popular")
                Spacer()
                showingCheckMark(forCondition: menuOption.sortByPopular)
            }
        }
        .customFont(.body)
    }

    var sortByPriceButton: some View {
        Button {
            menuOption.showSortByPrice()
        } label: {
            HStack {
                Text("Price $-$$$")
                Spacer()
                showingCheckMark(forCondition: menuOption.sortByPrice)

            }
        }
        .customFont(.body)
    }

    var sortByABCButton: some View {
        Button {
            menuOption.showSortByABC()
        } label: {
            HStack {
                Text("A-Z")
                Spacer()
                showingCheckMark(forCondition: menuOption.sortByABC)
            }
        }
        .customFont(.body)
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView()
            .environmentObject(MenuItemsViewModel())
            .environmentObject(MenuOption())
    }
}
