//
//  Text.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 21.04.2023.
//

import SwiftUI

struct TextStyleModifier: ViewModifier {

    @State var custom: Style

    enum Style {
        case sectionHeader
        case header
        case body
    }

    func body(content: Content) -> some View {
        switch custom {
        case .sectionHeader:
            content
                .font(.system(.title, design: .serif))
                .foregroundColor(.primary)
        case .header:
            content
                .font(.system(.title3, design: .serif))
                .bold()
                .foregroundColor(.primary)
        case .body:
            content
                .font(.system(.body, design: .serif))
                .foregroundColor(.primary)
        }
    }
}

//extension View {
//    func applyTextStyle(_ style: TextStyleModifier) -> some View {
//        modifier(style)
//    }
//}

extension View {
    func customFont(_ style: TextStyleModifier.Style) -> some View {
        return self.modifier(TextStyleModifier(custom: style))
    }
}

