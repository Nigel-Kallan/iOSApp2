//
//  HomeView.swift
//  ScavengerHunt
//
//  Created by NIGEL KALLAN on 2026-06-18.
//


import SwiftUI

// Home screen of the scavenger Hunt app.
struct HomeView: View {

    @StateObject var vm = HuntViewModel()

    var body: some View {

        NavigationStack {

            VStack(spacing: 30) {

                Text("Scavenger Hunt")
                    .font(.largeTitle)

                Text("Find 10 hidden items!")

                NavigationLink(
                    "Start Hunt"
                ) {

                    HuntListView(vm: vm)
                }

                NavigationLink(
                    "View Results"
                ) {

                    ResultsView(vm: vm)
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
