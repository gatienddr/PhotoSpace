//
//  CutomButton.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 08/03/2025.
//

import SwiftUI

struct CustomButton: View {

    @State var isPressed: Bool = false

    var body: some View {
        HStack {
            Image(systemName: "square.grid.2x2")

            Text("All tools")
                .customFont(.bold, 14)
                .padding([.vertical], ViewService.defaultPadding/2)
        }
        .foregroundStyle(.accent)
        .frame(maxWidth: .infinity)
        .background(Color(uiColor: isPressed ? .accent.withAlphaComponent(0.1) : .tertiarySystemGroupedBackground) )
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .onTapGesture {
            withAnimation(.default.speed(2)) {
                isPressed = true
            } completion: {
                isPressed = false
            }
        }
        .sensoryFeedback(.impact, trigger: isPressed)
    }
}
