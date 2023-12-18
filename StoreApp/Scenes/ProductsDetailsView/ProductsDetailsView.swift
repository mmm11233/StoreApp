//
//  ProductsDetailsView.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 19.12.23.
//

import SwiftUI

struct ProductsDetailsView: View {
    @StateObject var viewModel: ProductsDetailsViewModel

    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    ProductsDetailsView(viewModel: .init())
}
