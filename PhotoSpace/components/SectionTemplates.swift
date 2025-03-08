//
//  SectionTemplates.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 08/03/2025.
//

import SwiftUI

struct SectionTemplates: View {

    private let title: String

    private let imagesNames: [String]

    init(title: String, imagesNames: [String]) {
        self.title = title
        self.imagesNames = imagesNames
    }

    var body: some View {
        VStack(spacing: 5) {
                CustomSectionHeader(title: title)

                ScrollView(.horizontal) {
                    HStack {
                        ForEach(imagesNames, id: \.self) {imageName in
                            RoundedSquareImage(imageName: imageName)
                        }
                    }
                }

            }
    }
}
