//
//  Text.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 21.04.2023.
//

import SwiftUI

struct TextStyle: ViewModifier {

    @State var custom: TextStyling

    enum TextStyling {
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

extension View {
    func applyTextStyle(_ style: TextStyle) -> some View {
        modifier(style)
    }
}

extension View {
    func customFont(_ style: TextStyle.TextStyling) -> some View {
        return self.modifier(TextStyle(custom: style))
    }
}

