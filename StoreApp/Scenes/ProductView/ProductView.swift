//
//  ProductView.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 19.12.23.
//

import SwiftUI

struct ProductView: View {
    @EnvironmentObject var viewModel: ProductViewModel

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.products) { product in
                    NavigationLink(value: product) {
                        Text(product.category)
                            .primaryTextStyle
                    }
                }
                
            }.navigationDestination(for: Product.self) { product in
                Text(product.category)
            }
        }
    }
}

#Preview {
    ProductView()
        .environmentObject(ProductViewModel(category: "groceries"))

}
