//
//  MenuOption.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 06.04.2023.
//

import Foundation

class MenuOption: ObservableObject {
    
    @Published  var sectionFood: Bool
    @Published  var sectionDrink: Bool
    @Published  var sectionDesserts: Bool

    @Published  var sortByPopular: Bool
    @Published  var sortByPrice: Bool
    @Published  var sortByABC: Bool
    
    init() {
        do {
            sectionFood = false
            sectionDrink = false
            sectionDesserts = false

            sortByPopular = false
            sortByPrice = false
            sortByABC = false
        }
    }
    
    //MARK: SELECTED CATEGORIES
    
    //Переписати через guard
    //Повтореня коду. Створити одну функцію. Наприклад, записати одну функцію яка буде приймати змінну Bool
    
    func showFoodSection() {
        sectionFood.toggle()
    }
    
    func showDrinkSection() {
        sectionDrink.toggle()
    }
    
    func showDessertsSection() {
        sectionDesserts.toggle()
    }

    func showSectionConditionsCheck() {
//        if menuOption.sectionFood == false && menuOption.sectionDrink == false && menuOption.sectionDesserts == false {
//
//        }
//        if sectionFood == true && NetworkManager.sections.name == "Food" {
//            print("hi")
//        }
    }
    
    
    //MARK: SORT BY
    
    //Переписати через guard
    //Повтореня коду. Створити одну функцію. Наприклад, записати одну функцію яка буде приймати змінну Bool


    func showSortByPopular() {
        sortByPopular.toggle()
        sortByPrice = false
        sortByABC = false
    }
    
    func showSortByPrice() {
        sortByPrice.toggle()
        sortByPopular = false
        sortByABC = false
    }
    
    func showSortByABC() {
        sortByABC.toggle()
        sortByPopular = false
        sortByPrice = false
    }
    
}

