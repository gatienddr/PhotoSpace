//
//  Font+CustomFont.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 07/03/2025.
//

import SwiftUI

extension Font {
    static let customFont: (FontWeight, CGFloat) -> Font = { fontType, size in
        switch fontType {
        case .regular:
            Font.custom("Proxima Nova Regular", size: size)
        case .light:
            Font.custom("Proxima Nova Light", size: size)
        case .black:
            Font.custom("Proxima Nova Black", size: size)
        case .bold:
            Font.custom("Proxima Nova Bold", size: size)
        case .extrabold:
            Font.custom("Proxima Nova ExtraBold", size: size)
        }
    }
}
