//
//  ContentView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 22.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MenuItemsView()
            .environmentObject(MenuItemsViewModel(MenuOptionViewModel()))
            .environmentObject(MenuOptionViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MenuItemsViewModel(MenuOptionViewModel()))
            .environmentObject(MenuOptionViewModel())
    }
}
