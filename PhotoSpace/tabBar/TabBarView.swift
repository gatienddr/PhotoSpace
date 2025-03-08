//
//  TabBarView.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 07/03/2025.
//

import SwiftUI

struct TabBarView: View {

    @State var tabSelected = 1

    var body: some View {
        TabView(selection: $tabSelected) {
            Tab(value: 1) {
                CreateView()
            } label: {
                VStack {
                    Image(systemName: tabSelected == 1 ? "square.badge.plus.fill" : "square.badge.plus")
                        .environment(\.symbolVariants, .none)
                    Text("Create")
                }
            }

            Tab(value: 2) {
                Text("AI Tools")
            } label: {
                VStack {
                    Image(systemName: tabSelected == 2 ? "moon.stars.fill" : "moon.stars")
                        .environment(\.symbolVariants, .none)
                    Text("AI Tools")
                }
            }

            Tab(value: 3) {
                Text("Batch")
            } label: {
                VStack {
                    Image(systemName: tabSelected == 3 ? "square.stack.3d.up.fill" : "square.stack.3d.up")
                        .environment(\.symbolVariants, .none)
                    Text("Batch")
                }

            }

            Tab(value: 4) {
                Text("Teams")
            } label: {
                VStack {
                    Image(systemName: tabSelected == 4 ? "person.2.fill" : "person.2")
                        .environment(\.symbolVariants, .none)
                    Text("Teams")
                }
            }

            Tab(value: 5) {
                Text("Your Content")
            } label: {
                VStack {
                    Image(systemName: tabSelected == 5 ? "rectangle.stack.fill" : "rectangle.stack")
                        .environment(\.symbolVariants, .none)
                    Text("Your Content")
                }
            }
        }
        .sensoryFeedback(.impact, trigger: tabSelected)
    }
}

#Preview {
    TabBarView()
}
