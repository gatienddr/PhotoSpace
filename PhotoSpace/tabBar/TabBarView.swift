//
//  TabBarView.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 07/03/2025.
//

import SwiftUI

struct TabBarView: View {

    @State var tabSelected = 0

    var body: some View {
        TabView(selection: $tabSelected) {
            Tab("Create", systemImage: "square.badge.plus", value: 2) {
                CreateView()
            }

            Tab("AI Tools", systemImage: "moon.stars", value: 2) {
                Text("AI Tools")
            }

            Tab("Batch", systemImage: "square.stack.3d.up", value: 3) {
                Text("Batch")
            }

            Tab("Teams", systemImage: "person.2", value: 4) {
                Text("Teams")
            }

            Tab("Your Content", systemImage: "rectangle.stack", value: 5) {
               Text("Your Content")
            }
        }
    }
}

#Preview {
    TabBarView()
}
