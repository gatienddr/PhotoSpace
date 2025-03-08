//
//  CreateView.swift
//  PhotoSpace
//
//  Created by Gatien DIDRY on 07/03/2025.
//

import SwiftUI

struct CreateView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {

                    Tiles()

                    CustomButton()

                    SectionTemplates(
                        title: "Your Templates",
                        imagesNames: [
                            "podcast_cover_1",
                            "podcast_cover_2"
                        ]
                    )

                    SectionTemplates(
                        title: "Lanscapes",
                        imagesNames: [
                            "landscapes_1",
                            "landscapes_2",
                            "landscapes_3",
                            "landscapes_4"
                        ]
                    )

                    SectionTemplates(
                        title: "Mountains",
                        imagesNames: [
                            "mountains_1",
                            "mountains_2",
                            "mountains_3",
                            "mountains_4"
                        ]
                    )

                    SectionTemplates(
                        title: "Paris",
                        imagesNames: [
                            "paris_1",
                            "paris_2",
                            "paris_3",
                            "paris_4",
                            "paris_5",
                            "paris_6"
                        ]
                    )

                }

            }.simultaneousGesture(DragGesture())
        }
        .padding([.horizontal], ViewService.defaultPadding)
        .navigationTitle(Text("Create"))
    }
}

struct Tiles: View {
    var body: some View {
        VStack {
            HStack {
                Tile(
                    title: "Remove Background",
                    imageName: "superhero"
                )

                Tile(
                    title: "Logo",
                    imageName: "logo",
                    isPro: true
                )
            }

            HStack {
                Tile(
                    title: "AI Instagram Stories",
                    imageName: "social_media",
                    isPro: true
                )

                Tile(
                    title: "AI Backgrounds",
                    imageName: "candle",
                    isPro: true
                )
            }
        }
    }
}
