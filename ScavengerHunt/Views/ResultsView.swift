//
//  ResultsView.swift
//  ScavengerHunt
//
//  Created by NIGEL KALLAN on 2026-06-18.
//

import SwiftUI

// Displays the user's progress and reward.
struct ResultsView: View {

    @ObservedObject var vm: HuntViewModel

    var body: some View {

        VStack(spacing: 20) {

            Text(
                "Items Found: \(vm.foundCount)/10"
            )
            .font(.title)

            RewardView(
                reward: vm.rewardMessage()
            )

            // Submits the user's scavenger hunt results.
            Button("Submit Results") {

                vm.submitResults()
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
        .navigationTitle("Results")
    }
}
#Preview {
    ResultsView(vm: HuntViewModel())
}
