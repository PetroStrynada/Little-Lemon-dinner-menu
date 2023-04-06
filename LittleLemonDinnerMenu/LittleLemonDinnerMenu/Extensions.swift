//
//  Extensions.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 31.03.2023.
//

import Foundation
import SwiftUI

//MARK: View extensions

extension View {
    func showCheckMark() -> some View {
        Image(systemName: "checkmark")
            .imageForegroundColor()
    }
}

//MARK: Text extension

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

//MARK: Image extensions

extension Image {
    func imageStyle() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func imageForegroundColor() -> some View {
        self
            .foregroundColor(.primary)
    }
}

//MARK: Double extensions

extension Double {
    func removeZerosFromEnd() -> String {
        let formatter = NumberFormatter()
        let number = NSNumber(value: self)
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 16
        return String(formatter.string(from: number) ?? "")
    }
}

//MARK: FileManager extensions

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
