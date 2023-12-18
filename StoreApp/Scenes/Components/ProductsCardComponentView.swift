//
//  ProductsCardComponentView.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 18.12.23.
//

import SwiftUI

struct ProductsCardComponentView: View {
    // MARK: - Components
    var imageUrl: String
    var balance: Int
    var itemsInBacket: Double
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            productImageView
            ProductInfoStack
        }
        .frame(maxWidth: 230)
        .padding(EdgeInsets(top: 14, leading: 14, bottom: 20, trailing: 14))
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
    
    // MARK: - ImageView
    private var productImageView: some View {
        AsyncImage(url: URL(string: imageUrl))
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 160)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
    private var ProductInfoStack: some View {
        VStack(alignment: .leading) {
            balanceView
            itemsCountView
        }
    }
    
    private var balanceView: some View {
        Text("\(balance)")
            .font(.system(size: 28, weight: .semibold))
            .foregroundColor(.black.opacity(0.9))
    }
    
    private var itemsCountView: some View {
        Text("\(itemsInBacket)")
            .font(.system(size: 22, weight: .semibold))
            .foregroundColor(.black.opacity(0.7))
    }
}


#Preview {
    ProductsCardComponentView(
        imageUrl: "https://i.dummyjson.com/data/products/2/1.jpg",
        balance: 10,
        itemsInBacket: 12
    )
}
