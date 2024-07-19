//
//  Shoes.swift
//  LocalizedStore
//
//  Created by khoirunnisa' rizky noor fatimah on 08/07/24.
//

import Foundation

struct Shoes: Identifiable {
    var id = UUID()
    var type: String
    var series: String
    var brand: String
    var price: Double
    var image: String // Image name or URL
    var description: String
    var availableSize: [String]
    var numOfPromoDays: Int
    var numOfItemLeft: Int
}
