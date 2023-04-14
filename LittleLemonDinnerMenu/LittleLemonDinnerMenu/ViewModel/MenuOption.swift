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
    @Published  var allSections: Bool

    @Published  var sortByPopular: Bool
    @Published  var sortByPrice: Bool
    @Published  var sortByABC: Bool
    
    init() {
        do {
            sectionFood = true
            sectionDrink = true
            sectionDesserts = true
            allSections = false

            sortByPopular = false
            sortByPrice = false
            sortByABC = false
        }
    }
    
    //MARK: SELECTED CATEGORIES
    
    //Переписати через guard
    //Повтореня коду. Створити одну функцію. Наприклад, записати одну функцію яка буде приймати змінну Bool
    
    func showFoodSection() {
        if sectionFood == false {
            sectionFood = true
        } else {
            sectionFood = false
        }
    }
    
    func showDrinkSection() {
        if sectionDrink == false {
            sectionDrink = true
        } else {
            sectionDrink = false
        }
    }
    
    func showDessertsSection() {
        if sectionDesserts == false {
            sectionDesserts = true
        } else {
            sectionDesserts = false
        }
    }
    
    //Логіка функції showAllSections() не спрацьовує
    
    func showAllSections() {
        if sectionFood == false && sectionDrink == false && sectionDesserts == false {
            allSections = true
        } else {
            allSections = false
        }
    }
    
    
    //MARK: SORT BY
    
    //Переписати через guard
    //Повтореня коду. Створити одну функцію. Наприклад, записати одну функцію яка буде приймати змінну Bool
    
    func showSortByPopular() {
        if sortByPopular == false {
            sortByPopular = true
            sortByPrice = false
            sortByABC = false
        } else {
            sortByPopular = false
        }
    }
    
    func showSortByPrice() {
        if sortByPrice == false {
            sortByPrice = true
            sortByPopular = false
            sortByABC = false
        } else {
            sortByPrice = false
        }
    }
    
    func showSortByABC() {
        if sortByABC == false {
            sortByABC = true
            sortByPopular = false
            sortByPrice = false
        } else {
            sortByABC = false
        }
    }
    
}
