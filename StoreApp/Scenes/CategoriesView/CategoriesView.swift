//
//  CategoriesView.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 18.12.23.
//

import SwiftUI

struct CategoriesView: View {
    @StateObject var viewModel: CategoriesViewModel
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.categories) { category in
                    NavigationLink(value: category.categorie) {
                        Text(category.categorie)
                            .primaryTextStyle
                    }
                }
            }.navigationDestination(for: String.self) { category in
                ProductView()
                    .environmentObject(ProductViewModel(category: category))}
        }
    }
}

#Preview {
    CategoriesView(viewModel: CategoriesViewModel())
}
