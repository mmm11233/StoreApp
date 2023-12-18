//
//  ProductManager.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 19.12.23.
//

import Foundation
import NetSwift

class ProductManager {
    static let shared = ProductManager()
    var products: [Product] = []
    
    private init() {}
    
    func fetchProducts(completion: @escaping (Result<Void, Error>) -> Void) {
        
        let urlString = "https://dummyjson.com/products"
        guard let URL = URL(string: urlString) else { return }
        
        NetworkManager.shared.fetchDecodableData(from: URL, responseType: ProductData.self, completion: { result in
            switch result {
            case .success(let data):
                self.products = data.products
                completion(.success(()))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
}
