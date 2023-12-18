//
//  CategoriesViewModel.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 18.12.23.
//

import SwiftUI

final class CategoriesViewModel: ObservableObject {
    var categories: [CategoriesModel] {
        var categories: [CategoriesModel] = []
        
        Category.allCases.forEach { category in
            categories.append(CategoriesModel(categorie: category.rawValue))
        }
        
        return categories
    }
}
