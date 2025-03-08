//
//  UnscaleButtonStyle.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 08/03/2025.
//

import SwiftUI

struct UnScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .sensoryFeedback(.impact, trigger: configuration.isPressed)
    }
}
