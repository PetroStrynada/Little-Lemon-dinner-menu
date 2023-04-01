//
//  Extensions.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 31.03.2023.
//

import Foundation
import SwiftUI

extension Text {
    func sectionHeaderStyle() -> some View {
        self
            .font(.system(.title, design: .serif))
    }
    
    func headerStyle() -> some View {
        self
            .font(.system(.title3, design: .serif))
            .bold()
    }
    
    func bodyStyle() -> some View {
        self
            .font(.system(.body, design: .serif))
    }
}

extension Image {
    func imageStyle() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
}

extension Double {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 16
        return String(formatter.string(from: number) ?? "")
    }
}
