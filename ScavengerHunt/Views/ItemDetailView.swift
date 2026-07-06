//
//  ItemDetailView.swift
//  ScavengerHunt
//
//  Created by NIGEL KALLAN on 2026-06-18.
//

import SwiftUI
import PhotosUI

// Displays item details and allows the user to mark it as found.
struct ItemDetailView: View {

    @ObservedObject var vm: HuntViewModel

    let item: HuntItem

    @State private var selectedItem: PhotosPickerItem?

    var body: some View {

        VStack(spacing: 20) {

            Text(item.name)
                .font(.largeTitle)

            Text(item.clue)

            PhotosPicker(
                selection: $selectedItem,
                matching: .images
            ) {

                Label(
                    "Take / Select Photo",
                    systemImage: "camera"
                )
            }

            Button("Mark Found") {

                vm.markFound(item: item)
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
    }
}
#Preview {
    ItemRowView(
        item: HuntItem(
            name: "Golden Key",
            clue: "Near the bookstore entrance"
        )
    )
}
