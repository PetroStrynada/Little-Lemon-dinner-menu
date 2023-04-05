//
//  Menu.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 29.03.2023.
//


import Foundation

class Menu: ObservableObject, Codable {
    //MARK: - MenuItemsView
    
    let sections: [MenuSection]
    
    init() {
        do {
            let url = Bundle.main.url(forResource: "menu", withExtension: ".json")!
            let data = try Data(contentsOf: url)
            let menuData = try JSONDecoder().decode(Menu.self, from: data)
            
            sections = menuData.sections
        } catch {
            fatalError("menu.json file is missing or corrupt")
        }
    }
    
    //MARK: - MenuItensOptionsView
    

    
    
    
//
//    
//    func selectedCategoriesDefaultSettings() {
//        if showSectionFood && showSectionDrink && showSectionDeserts == false {
//            showAllSections = true
//        } else {
//            showAllSections = false
//        }
//    }
//    
//    func selectedCategories() {
//        if showSectionFood == true {
//            
//        }
//    }
    
}
