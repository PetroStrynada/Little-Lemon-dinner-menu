//
//  MenuItemsViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 02.05.2023.
//

import Foundation

final class MenuItemsViewModel: ObservableObject {

//        let sections: [MenuSectionModel]
//
//        init() {
//            do {
//                let url = Bundle.main.url(forResource: "menu", withExtension: ".json")!
//                let data = try Data(contentsOf: url)
//                let menuData = try JSONDecoder().decode(MenuItemsViewModel.self, from: data)
//
//                sections = menuData.sections
//
//            } catch {
//                fatalError("menu.json file is missing or corrupt")
//            }
//        }

    let sections: [MenuSectionModel]

    private let networkManager: NetworkManager = .init()

    init() {
        guard let url = Bundle.main.url(forResource: "menu", withExtension: ".json"),
              let menu: MenuModel = try? networkManager.parse(url) else {
            sections = .init()
            return
        }
        self.sections = menu.sections
    }
}

