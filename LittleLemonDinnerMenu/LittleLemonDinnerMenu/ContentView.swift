//
//  ContentView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 22.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MenuItemsView().environmentObject(Menu())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Menu())
    }
}
