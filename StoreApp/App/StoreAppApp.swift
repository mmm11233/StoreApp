//
//  StoreAppApp.swift
//  StoreApp
//
//  Created by Mariam Joglidze on 18.12.23.
//

import SwiftUI

@main
struct StoreAppApp: App {
    @State var viewModel = MainViewModel()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
