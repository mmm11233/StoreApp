//
//  ContentView.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 18.12.23.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    @EnvironmentObject var viewModel: MainViewModel
    @State var path = NavigationPath()
    
    private let gridLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    // MARK: - Body
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 16) {
                    Text("Welcome")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.black)
                    
                    navigationStack
                    Spacer()
                }
            }
            .padding(16)
            .background(Color(red: 0.9, green: 0.97, blue: 1))
            .onAppear {
                viewModel.fetchProducts()
            }
            categoryButton
                .background(Color(red: 0.9, green: 0.97, blue: 1))
        }
    }
    // MARK: - Destinations Grid
    private var navigationStack: some View {
        NavigationStack(path: $path) {
            horizontalScrollView
        }
    }
    
    private var horizontalScrollView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            destinationGrid
        }
    }
    
    private var destinationGrid: some View {
        LazyVGrid(columns: gridLayout) {
            ForEach(viewModel.products) { product in
                destinationLink(product)
            }
        }
    }
    
    private func destinationLink(_ product: Product) -> some View {
        NavigationLink(value: product, label: {
            ProductsCardComponentView(
                imageUrl: product.images.first ?? "",
                balance: product.price,
                itemsInBacket: product.rating)
        })
        .navigationDestination(for: Product.self) { _ in
            CategoriesView(viewModel: CategoriesViewModel())
        }
    }
    
    private var categoryButton: some View {
        HStack {
            Spacer()
            Button("Open Categories"){}
            Spacer()
        }
    }
}

#Preview {
    MainView()
        .environmentObject(MainViewModel())
}
