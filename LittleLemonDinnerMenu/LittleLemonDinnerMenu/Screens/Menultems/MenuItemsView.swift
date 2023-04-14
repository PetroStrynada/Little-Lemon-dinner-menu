//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 30.03.2023.
//

import SwiftUI

struct MenuItemsView: View {
    @EnvironmentObject var menu: Menu
    
    @State private var showingFilter = false
    
    var body: some View {
        NavigationView {
            GridView()
            .buttonStyle(.plain)
            .sheet(isPresented: $showingFilter,
                   content: MenuItemsOptionView.init)
            .navigationTitle("Menu")
            .toolbar { filterButton }
        }
    }
    
    func showFilter() {
        showingFilter = true
    }
    
    var filterButton: some View {
        Button {
            showFilter()
        } label: {
            Label("Filter", systemImage: "slider.horizontal.3")
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
            .environmentObject(Menu())
            .environmentObject(MenuOption())
    }
}
