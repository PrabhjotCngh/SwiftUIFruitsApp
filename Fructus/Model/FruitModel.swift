//
//  FruitModel.swift
//  Fructus
//
//  Created by M_2195552 on 2023-05-24.
//

import SwiftUI

//MARK: - Fruits Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
