//
//  CategoriesModel.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 18.12.23.
//

import Foundation

struct CategoriesModel: Identifiable, Hashable {
    var id: UUID = .init()
    var categorie: String
}
