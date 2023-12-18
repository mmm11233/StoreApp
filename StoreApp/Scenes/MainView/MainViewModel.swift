//
//  MainViewModel.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 18.12.23.
//

import SwiftUI
import NetSwift 

final class MainViewModel: ObservableObject {
    // MARK: - Properties
    @Published var products: [Product] = []
    @Published var error: String?
    @Published var showAlert = false
//    @Published var currentTip = ""
    
    // MARK: - Initialization
    init() {
        fetchProducts()
    }
    
    // MARK: - Network Call
    
    func fetchProducts() {
        ProductManager.shared.fetchProducts(completion: { [weak self] result in
            switch result {
            case .success(_):
                self?.products = ProductManager.shared.products
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
}
