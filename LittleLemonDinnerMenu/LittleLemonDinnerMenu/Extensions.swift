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
}

extension Text {
    func headerStyle() -> some View {
        self
            .font(.system(.title3, design: .serif))
            .bold()
    }
}

extension Text {
    func bodyStyle() -> some View {
        self
            .font(.system(.body, design: .serif))
    }
}

extension Double {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 16 //maximum digits in Double after dot (maximum precision)
        return String(formatter.string(from: number) ?? "")
    }
}
