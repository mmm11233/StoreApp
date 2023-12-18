//
//  ProductViewModel.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 19.12.23.
//

import SwiftUI

final class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []

    init(category: String) {
        filter(by: category)
    }
    
    func filter(by category: String) {
        let filteredProduct = ProductManager.shared.products.filter({ $0.category == category })
        self.products = filteredProduct
    }
}
