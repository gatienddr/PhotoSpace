//
//  Tile.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 08/03/2025.
//

import SwiftUI

struct Tile: View {

    private let title: String

    private let imageName: String

    private let isPro: Bool

    @State var isPressed = false

    init(title: String, imageName: String, isPro: Bool = false) {
        self.title = title
        self.imageName = imageName
        self.isPro = isPro
    }

    var body: some View {
        Button {

        } label: {



            HStack {
                Text(title)
                    .customFont(.bold, 13)
                    .padding([.leading], ViewService.defaultPadding / 2)

                Spacer()

                Image(imageName)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .rotationEffect(.degrees(-20))
                    .offset(x: 15, y: 7)
                    .frame(maxWidth: 80, maxHeight: 80)

            }
            .background(Color(uiColor: isPressed ? .accent.withAlphaComponent(0.1) : .tertiarySystemGroupedBackground) )
            .onTapGesture {
                withAnimation(.default.speed(2)) {
                    self.isPressed = true
                } completion: {
                    self.isPressed = false
                }
            }
            .overlay(alignment: .topTrailing, content: {
                Text("Pro")
                    .customFont(.regular, 11)
                    .foregroundStyle(.purple.gradient)
                    .padding(2)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
                    .padding([.trailing], 5)
                    .padding([.top], 5)
                    .opacity(isPro ? 1 : 0) // opacity to improve performances
            })
            .background(Color(uiColor: UIColor.tertiarySystemGroupedBackground))
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .sensoryFeedback(.impact, trigger: isPressed)
        }
    }
}

