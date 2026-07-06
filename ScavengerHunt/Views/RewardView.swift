//
//  RewardView.swift
//  ScavengerHunt
//
//  Created by NIGEL KALLAN on 2026-06-18.
//

import SwiftUI

// Displays the reward earned after completing the scavenger hunt.
struct RewardView: View {

    let reward: String

    var body: some View {

        Text(reward)
            .font(.title2)
            .foregroundColor(.blue)
    }
}
#Preview {
    RewardView(
        reward: "20% Discount"
    )
}
