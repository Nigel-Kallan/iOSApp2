//
//  ItemRowView.swift
//  ScavengerHunt
//
//  Created by NIGEL KALLAN on 2026-06-18.
//

import SwiftUI

// Displays one scavenger hunt item in the list.
struct ItemRowView: View {

    let item: HuntItem

    var body: some View {

        HStack {

            VStack(alignment: .leading) {

                Text(item.name)
                    .font(.headline)

                Text(item.clue)
                    .font(.caption)
            }

            Spacer()

            Image(
                systemName:
                item.isFound ?
                "checkmark.circle.fill" :
                "circle"
            )
            .foregroundColor(
                item.isFound ?
                .green :
                .gray
            )
        }
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
