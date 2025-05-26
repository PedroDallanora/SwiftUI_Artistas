//
//  App.swift
//  NewArtistasCuritibanos
//
//  Created by Pedro Dallanora Bittencourt on 20/05/25.
//

import SwiftUI

@main
struct CurtibanosGalleryApp: App {
    @StateObject private var viewModel = GaleriaViewModel()

    var body: some Scene {
        WindowGroup {
            GaleriaView()
                .environmentObject(viewModel)
        }
    }
}

