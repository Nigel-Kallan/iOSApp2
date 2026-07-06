//
//  HuntViewModel.swift
//  ScavengerHunt
//
//  Created by NIGEL KALLAN on 2026-06-18.
//

import Foundation
import Combine

// Handles the scavenger data and logic.
class HuntViewModel: ObservableObject {

    @Published var items: [HuntItem] = []

    init() {
        loadItems()
    }

    // Loads the items.
    func loadItems() {

        items = [
            HuntItem(name: "Golden Key",
                     clue: "Near the bookstore entrance"),

            HuntItem(name: "Movie Ticket",
                     clue: "Look near the cinema lobby"),

            HuntItem(name: "Coffee Cup",
                     clue: "Hidden in the café area"),

            HuntItem(name: "Pizza Slice",
                     clue: "Near the restaurant"),

            HuntItem(name: "Toy Car",
                     clue: "Inside the toy store"),

            HuntItem(name: "Book",
                     clue: "Look near the reading section"),

            HuntItem(name: "Gift Box",
                     clue: "Near customer service"),

            HuntItem(name: "Ice Cream",
                     clue: "Close to the food court"),

            HuntItem(name: "Movie Poster",
                     clue: "Near theatre hallway"),

            HuntItem(name: "Treasure Chest",
                     clue: "Hidden near the exit")
        ]
    }

    // Marks the selected item as found.
    func markFound(item: HuntItem) {

        if let index = items.firstIndex(where: {
            $0.id == item.id
        }) {
            items[index].isFound = true
        }
    }

    //Returns the number of items found
    var foundCount: Int {
        items.filter { $0.isFound }.count
    }

    // Calculate the reward based on the items found.
    func rewardMessage() -> String {

        switch foundCount {

        case 10:
            return "20% Discount + Grand Prize Entry"

        case 7...9:
            return "20% Discount"

        case 5...6:
            return "10% Discount"

        default:
            return "No Reward Yet"
        }
    }

    // Calculates the percentage of items found.
    var completionPercentage: Int {
        (foundCount * 100) / items.count
    }
    // Simulates submitting results.
    func submitResults() {
        print("Results Submitted")
    }
}
