//
//  Menu.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 29.03.2023.
//

import Foundation

class Menu: ObservableObject, Codable {
    let section: [MenuSection]
    
    init() {
        do {
            let url = Bundle.main.url(forResource: "menu", withExtension: ".json")!
            let data = try Data(contentsOf: url)
            //let menuData = try JSONDecoder().decode(Menu.self, from: data)
            let menuData = try JSONDecoder().decode(Menu.self, from: data)
            
            section = menuData.section
        } catch {
            fatalError("menu.json file is missing or corrupt")
        }
    }
}
