//
//  ProductModel.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 19.12.23.
//

import Foundation

struct ProductModel: Identifiable {
    var id: UUID = .init()
    var product: Product
}
