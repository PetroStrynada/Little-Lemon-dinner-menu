//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 30.03.2023.
//

import SwiftUI

struct MenuItemsView: View {
    @EnvironmentObject var menu: Menu
    
    @State private var shovingFilter = false
    
    let columns = [
        GridItem(.adaptive(minimum: 115), alignment: .top)
    ]
    
    var body: some View {
        NavigationView {
            GridView()
            .buttonStyle(.plain)
            .sheet(isPresented: $shovingFilter, content: MenuItemsOptionView.init)
            .navigationTitle("Menu")
            .toolbar {
                filterButton
            }
        }
    }
    
    func shoveFilter() {
        shovingFilter = true
    }
    
    var filterButton: some View {
        Button {
            shoveFilter()
        } label: {
            Label("Filter", systemImage: "slider.horizontal.3")
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
            .environmentObject(Menu())
    }
}
