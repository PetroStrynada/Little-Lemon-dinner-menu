//
//  GridView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 31.03.2023.
//

import SwiftUI

struct GridView: View {
    @EnvironmentObject var menu: Menu
    @EnvironmentObject var menuOption: MenuOption
    
    let columns = [
        GridItem(.adaptive(minimum: 115), alignment: .top) //for 3 line grid
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, pinnedViews: .sectionHeaders) {
                ForEach(menu.sections) { section in
                    
                    //Повторення коду. Винести розділ Section в окреме View
                    
                    if menuOption.sectionFood == false && menuOption.sectionDrink == false && menuOption.sectionDesserts == false {
                        Section {
                            ForEach(section.meal) { meal in
                                NavigationLink {
                                    MenuItemDetailsView(meal: meal)
                                } label: {
                                    VStack {
                                        Image(meal.image)
                                            .imageStyle()
                                            .cornerRadius(10)
                                        
                                        Text(meal.name)
                                            .bodyStyle()
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
                    
                    if menuOption.sectionFood == true && section.name == "Food" {
                        Section {
                            ForEach(section.meal) { meal in
                                NavigationLink {
                                    MenuItemDetailsView(meal: meal)
                                } label: {
                                    VStack {
                                        Image(meal.image)
                                            .imageStyle()
                                            .cornerRadius(10)
                                        
                                        Text(meal.name)
                                            .bodyStyle()
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
                    
                    if menuOption.sectionDrink == true && section.name == "Drinks" {
                        Section {
                            ForEach(section.meal) { meal in
                                NavigationLink {
                                    MenuItemDetailsView(meal: meal)
                                } label: {
                                    VStack {
                                        Image(meal.image)
                                            .imageStyle()
                                            .cornerRadius(10)
                                        
                                        Text(meal.name)
                                            .bodyStyle()
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
                    
                    if menuOption.sectionDesserts == true && section.name == "Dessert" {
                        Section {
                            ForEach(section.meal) { meal in
                                NavigationLink {
                                    MenuItemDetailsView(meal: meal)
                                } label: {
                                    VStack {
                                        Image(meal.image)
                                            .imageStyle()
                                            .cornerRadius(10)
                                        
                                        Text(meal.name)
                                            .bodyStyle()
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
            }
            .padding(.horizontal)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
            .environmentObject(Menu())
            .environmentObject(MenuOption())
    }
}


