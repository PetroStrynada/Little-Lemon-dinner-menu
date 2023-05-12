//
//  GridSectionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 01.05.2023.
//

import SwiftUI

struct GridSectionView: View {
    
//    @EnvironmentObject var menu: MenuItemsViewModel
//    @EnvironmentObject var menuOption: MenuOptionViewModel

    let section: MenuSectionModel

    var body: some View {
        Section {
            ForEach(section.meal) { meal in
                NavigationLink {
                    MenuItemDetailsView(meal: meal)
                } label: {
                    VStack {
                        Image(meal.image)
                            .imageStyleForGrid()

                        Text(meal.name)
                            .customFont(.body)
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

//struct GridSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        GridSectionView(section: MenuSectionModel.example)
//            .environmentObject(MenuItemsViewModel(MenuOptionViewModel()))
//            .environmentObject(MenuOptionViewModel())
//    }
//}



