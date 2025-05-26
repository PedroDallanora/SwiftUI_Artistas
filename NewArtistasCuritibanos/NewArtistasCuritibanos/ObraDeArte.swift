//
//  ObraDeArte.swift
//  NewArtistasCuritibanos
//
//  Created by Pedro Dallanora Bittencourt on 20/05/25.
//

import Foundation

struct ObraDeArte: Identifiable {
    let id: UUID = UUID()
    let titulo: String
    let artista: String
    let ano: Int
    let estilo: String
    let imagemNome: String
    let descricao: String
}
