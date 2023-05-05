//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 30.03.2023.
//

import SwiftUI

struct MenuItemsView: View {
    
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
    
    var filterButton: some View {
        Button {
            showingFilter.toggle()
        } label: {
            Label("Filter", systemImage: "slider.horizontal.3")
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
            .environmentObject(MenuItemsViewModel())
            .environmentObject(MenuOption())
    }
}
