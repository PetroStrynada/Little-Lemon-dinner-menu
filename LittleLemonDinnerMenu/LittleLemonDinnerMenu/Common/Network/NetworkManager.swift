//
//  Menu.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 29.03.2023.
//


import Foundation

class NetworkManager: ObservableObject, Codable {

    func parse<T: Codable>(_ url: URL) throws -> T {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
