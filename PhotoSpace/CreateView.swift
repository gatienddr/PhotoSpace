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

                CustomSectionHeader(title: "Your Templates")

                ScrollView(.horizontal) {
                    HStack {
                        RoundedSquareImage(imageName: "podcast_cover_1")

                        RoundedSquareImage(imageName: "podcast_cover_2")
                    }
                }

                ScrollView(.horizontal) {
                    HStack {
                        RoundedSquareImage(imageName: "podcast_cover_1")

                        RoundedSquareImage(imageName: "podcast_cover_2")
                    }
                }

                ScrollView(.horizontal) {
                    HStack {
                        RoundedSquareImage(imageName: "podcast_cover_1")

                        RoundedSquareImage(imageName: "podcast_cover_2")
                    }
                }

                ScrollView(.horizontal) {
                    HStack {
                        RoundedSquareImage(imageName: "podcast_cover_1")

                        RoundedSquareImage(imageName: "podcast_cover_2")
                    }
                }

                ScrollView(.horizontal) {
                    HStack {
                        RoundedSquareImage(imageName: "podcast_cover_1")

                        RoundedSquareImage(imageName: "podcast_cover_2")
                    }
                }


                ScrollView(.horizontal) {
                    HStack {
                        RoundedSquareImage(imageName: "podcast_cover_1")

                        RoundedSquareImage(imageName: "podcast_cover_2")
                    }
                }


                ScrollView(.horizontal) {
                    HStack {
                        RoundedSquareImage(imageName: "podcast_cover_1")

                        RoundedSquareImage(imageName: "podcast_cover_2")
                    }
                }


                ScrollView(.horizontal) {
                    HStack {
                        RoundedSquareImage(imageName: "podcast_cover_1")

                        RoundedSquareImage(imageName: "podcast_cover_2")
                    }
                }

            }
            .padding([.horizontal], ViewService.defaultPadding)

                .navigationTitle(Text("Create"))

        }

    }
}


