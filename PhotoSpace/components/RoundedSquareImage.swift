//
//  RoundedSquareImage.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 07/03/2025.
//

import SwiftUI

struct RoundedSquareImage: View {

    var imageName: String

    var body: some View {
        Button {} label: {
        Image(imageName)
            .resizable()
            .frame(maxWidth: 100, maxHeight: 100)
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
        .buttonStyle(UnScaleButtonStyle())
    }
}
