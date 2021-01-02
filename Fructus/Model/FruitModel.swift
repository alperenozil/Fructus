//
//  FruitModel.swift
//  Fructus
//
//  Created by Necdet Alperen Özil on 2.01.2021.
//

import SwiftUI

// fruits data model

struct Fruit: Identifiable {
    var id=UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
