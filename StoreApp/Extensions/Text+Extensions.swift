//
//  Text+Extensions.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 19.12.23.
//

import SwiftUI

extension Text {
    var primaryTextStyle: some View {
        self
        .padding()
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}
