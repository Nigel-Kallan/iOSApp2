//
//  HuntListView.swift
//  ScavengerHunt
//
//  Created by NIGEL KALLAN on 2026-06-18.
//

import SwiftUI

// Displays all of the scavenger hunt items.
struct HuntListView: View {

    @ObservedObject var vm: HuntViewModel

    var body: some View {

        List(vm.items) { item in

            NavigationLink {

                ItemDetailView(
                    vm: vm,
                    item: item
                )

            } label: {

                ItemRowView(item: item)
            }
        }
        .navigationTitle("Hunt Items")
    }
}
#Preview {
    HuntListView(vm: HuntViewModel())
}
