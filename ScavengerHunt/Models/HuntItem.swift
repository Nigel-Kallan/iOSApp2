//
//  HuntItem.swift
//  ScavengerHunt
//
//  Created by NIGEL KALLAN on 2026-06-18.
//

import Foundation

// Stores information about each hunt item

struct HuntItem: Identifiable {

    let id = UUID()

    var name: String
    var clue: String
    var isFound: Bool = false
}
