//
//  Product.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 18.12.23.
//

import Foundation

struct ProductData: Decodable {
    let products: [Product]
}

struct Product: Decodable, Identifiable, Hashable {
    let id: Int
    let title: String
    let price: Int
    let description: String
    let category: String
    let rating: Double
    let images: [String]
}

enum Category: String, Decodable, CaseIterable {
    case smartphones
    case laptops
    case fragrances
    case skincare
    case groceries
    case homeDecoration
    
    private enum CodingKeys: String, CodingKey {
        case smartphones, laptops, fragrances, skincare, groceries
        case homeDecoration = "home-decoration"
    }
}
