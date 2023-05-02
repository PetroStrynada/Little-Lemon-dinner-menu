//
//  TextExtention.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 28.04.2023.
//

import SwiftUI

extension Text {
    func sectionHeaderStyle() -> some View {
        self
            .font(.system(.title, design: .serif))
            .foregroundColor(.primary)
    }

    func headerStyle() -> some View {
        self
            .font(.system(.title3, design: .serif))
            .bold()
            .foregroundColor(.primary)
    }

    func bodyStyle() -> some View {
        self
            .font(.system(.body, design: .serif))
            .foregroundColor(.primary)
    }
}
