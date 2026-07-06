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

                Text("Welcome to the Scavenger Hunt!")
                    .font(.title2)

                Image(systemName: "map.fill")
                    .font(.system(size: 70))
                    .foregroundColor(.blue)

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
