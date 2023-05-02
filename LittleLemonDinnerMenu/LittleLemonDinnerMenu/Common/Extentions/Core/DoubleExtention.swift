//
//  DoubleExtention.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 28.04.2023.
//

import Foundation

extension Double {
    func doubleNumberFormattedToString(minimumFractionDigits: Int = 2) -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = minimumFractionDigits
        formatter.maximumFractionDigits = 16
        return String(formatter.string(from: number) ?? "")
    }
}
