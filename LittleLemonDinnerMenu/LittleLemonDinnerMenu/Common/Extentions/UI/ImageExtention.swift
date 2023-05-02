//
//  ImageExtention.swift
//  LittleLemonDinnerMenu
//
//  Created by Petro Strynada on 28.04.2023.
//

import SwiftUI

extension Image {
    func imageStyleResizableScaledToFit() -> some View {
        self
            .resizable()
            .scaledToFit()
    }

    func imageStyleForGrid() -> some View {
        self
            .imageStyleResizableScaledToFit()
            .cornerRadius(10)
    }
}

