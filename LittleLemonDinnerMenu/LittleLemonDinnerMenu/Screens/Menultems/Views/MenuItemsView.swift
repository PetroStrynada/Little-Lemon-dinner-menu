//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 30.03.2023.
//

import SwiftUI

struct MenuItemsView: View {
    @EnvironmentObject var menu: Menu
    
    let columns = [
        GridItem(.adaptive(minimum: 115), alignment: .top)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, pinnedViews: .sectionHeaders) {
                    ForEach(menu.sections) { section in
                        Section {
                            ForEach(section.meal) { meal in
                                NavigationLink {
                                    MenuItemDetailsView(meal: meal)
                                } label: {
                                    VStack {
                                        Image(meal.image)
                                            .resizable()
                                            .scaledToFit()
                                            .cornerRadius(10)
                                            
                                        Text(meal.name)
                                            .frame(minWidth: 117)
                                            .font(.system(.body, design: .serif))
                                            .multilineTextAlignment(.center)
                                    }
                                    .padding(.bottom)
                                }
                                .buttonStyle(.plain)
                            }
                        } header: {
                            Text(section.name)
                                .font(.system(.title, design: .serif))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding([.top, .bottom, .trailing], 5)
                                .background(.background)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Menu")
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
            .environmentObject(Menu())
    }
}
