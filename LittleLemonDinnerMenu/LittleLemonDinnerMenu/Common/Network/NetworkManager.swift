//
//  Menu.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 29.03.2023.
//


import Foundation

class NetworkManager: ObservableObject, Codable {
    let sections: [MenuSection]
    
    init() {
        do {
            let url = Bundle.main.url(forResource: "menu", withExtension: ".json")!
            let data = try Data(contentsOf: url)
            let menuData = try JSONDecoder().decode(NetworkManager.self, from: data)
            
            sections = menuData.sections
            
        } catch {
            fatalError("menu.json file is missing or corrupt")
        }
    }
}
