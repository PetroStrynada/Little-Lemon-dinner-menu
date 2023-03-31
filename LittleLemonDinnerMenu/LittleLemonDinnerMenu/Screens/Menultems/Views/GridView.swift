//
//  GridView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 31.03.2023.
//

import SwiftUI

struct GridView: View {
    @EnvironmentObject var menu: Menu
    
    let columns = [
        GridItem(.adaptive(minimum: 115), alignment: .top) //for 3 line grid
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, pinnedViews: .sectionHeaders) {
                ForEach(menu.sections) { section in
                    Section {
                        ForEach(section.meal) { meal in
                            NavigationLink {
                                MenuItemDetailsView(meal: meal)
                            } label: {
                                VStack {
                                    MealImageView.init(meal: meal)
                                        .cornerRadius(10)
                                    
                                    MealNameView(meal: meal)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 117) //so that the word "Mediterranean" fits on one line without wrapping the word in a grid with three lines
                                }
                                .padding(.bottom)
                            }
                        }
                    } header: {
                        Text(section.name)
                            .sectionHeaderStyle()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.top, .bottom, .trailing], 5)
                            .background(.background)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
            .environmentObject(Menu())
    }
}
