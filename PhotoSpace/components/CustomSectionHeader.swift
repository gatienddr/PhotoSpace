//
//  CustomSectionHeader.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 07/03/2025.
//

import SwiftUI

struct CustomSectionHeader: View {
    var title: String

    var body: some View {
        HStack {
            Text(title)
                .customFont(.bold, 25)

            Image(systemName: "arrow.right")
            Spacer()
        }
    }
}
