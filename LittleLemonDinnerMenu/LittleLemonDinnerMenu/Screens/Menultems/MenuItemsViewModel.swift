//
//  MenuItemsViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 02.05.2023.
//

import Foundation
import Combine
import SwiftUI

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

    @Published var shouldShowFood = false
    @Published var shouldShowDrink = false
    @Published var shouldShowDesserts = false

    private var cancellable = Set<AnyCancellable>()

    let sections: [MenuSectionModel]

    private let networkManager: NetworkManager = .init()

    init(_ menuOptionViewModel: MenuOptionViewModel) {
        guard let url = Bundle.main.url(forResource: "menu", withExtension: ".json"),
              let menu: MenuModel = try? networkManager.parse(url) else {
            self.sections = .empty
            return
        }
        self.sections = menu.sections

        self.shouldShowFood = menuOptionViewModel.sectionFood
        self.shouldShowDrink = menuOptionViewModel.sectionDrink
        self.shouldShowDesserts = menuOptionViewModel.sectionDesserts

        menuOptionViewModel.$sectionFood
            .assign(to: \.shouldShowFood, on: self)
            .store(in: &cancellable)

        menuOptionViewModel.$sectionDrink
            .assign(to: \.shouldShowDrink, on: self)
            .store(in: &cancellable)

        menuOptionViewModel.$sectionDesserts
            .assign(to: \.shouldShowDesserts, on: self)
            .store(in: &cancellable)

    }
}

