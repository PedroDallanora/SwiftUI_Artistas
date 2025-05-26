//
//  GaleriaViewModel.swift
//  NewArtistasCuritibanos
//
//  Created by Pedro Dallanora Bittencourt on 20/05/25.
//

import Foundation
import SwiftUI

class GaleriaViewModel: ObservableObject {
    @Published var obras: [ObraDeArte] = [
        ObraDeArte(titulo: "Painel da Igreja Perpétuo Socorro", artista: "Poty Lazzarotto", ano: 1950, estilo: "Painel de Mosaico", imagemNome: "painel_igreja", descricao: "Obra de Poty Lazzarotto, artista curitibano que retrata temas regionais em mosaicos espalhados pela cidade."),
        ObraDeArte(titulo: "Bosque Alemão", artista: "Poty Lazzarotto", ano: 1996, estilo: "Muralismo", imagemNome: "bosque_alemao", descricao: "Mural que homenageia a imigração alemã, criado por Poty, nascido e atuante em Curitiba."),
        ObraDeArte(titulo: "Ópera de Arame", artista: "Domingos Bongestabs", ano: 1992, estilo: "Arquitetura Contemporânea", imagemNome: "opera_arame", descricao: "Projeto arquitetônico de Domingos Bongestabs, arquiteto que trabalhou ativamente na transformação cultural de Curitiba."),
        ObraDeArte(titulo: "Museu Oscar Niemeyer", artista: "Oscar Niemeyer", ano: 2002, estilo: "Arquitetura Modernista", imagemNome: "museu_oscar", descricao: "Oscar Niemeyer, embora carioca, deixou forte marca em Curitiba com o projeto do Museu do Olho."),
        ObraDeArte(titulo: "Praça do Japão", artista: "Theodoro de Bona", ano: 1962, estilo: "Escultura e Arquitetura Paisagística", imagemNome: "praca_japao", descricao: "Theodoro de Bona, artista curitibano de ascendência italiana, contribuiu para o embelezamento de Curitiba, e a Praça do Japão celebra a imigração japonesa na cidade com esculturas e jardins tradicionais."),
        ObraDeArte(titulo: "Jardim Botânico de Curitiba", artista: "Carla Schwab", ano: 2010, estilo: "Pintura Contemporânea", imagemNome: "botanico", descricao: "Carla Schwab, pintora contemporânea curitibana, reproduz o famoso Jardim Botânico com cores vibrantes."),
        ObraDeArte(titulo: "Memorial Árabe", artista: "Elifas Andreato", ano: 1997, estilo: "Arquitetura Temática", imagemNome: "memorial_arabe", descricao: "O Memorial Árabe, projetado por Elifas Andreato, artista curitibano de destaque, homenageia a cultura árabe em Curitiba com uma arquitetura simbólica e espaços culturais abertos ao público."),
        ObraDeArte(titulo: "Parque Tanguá", artista: "Fernando Canalli", ano: 1996, estilo: "Fotografia Artística", imagemNome: "parque_tangua", descricao: "Fernando Canalli, fotógrafo nascido em Curitiba, captura a beleza dos parques urbanos."),
        ObraDeArte(titulo: "Painéis do Teatro Guaíra", artista: "Poty Lazzarotto", ano: 1970, estilo: "Painel de Azulejos", imagemNome: "teatro_guaira", descricao: "Painéis criados por Poty Lazzarotto no Teatro Guaíra, um ícone da arte pública curitibana."),
        ObraDeArte(titulo: "Bosque Papa João Paulo II", artista: "Artistas Poloneses", ano: 1983, estilo: "Arquitetura Vernacular", imagemNome: "bosque_papa", descricao: "Espaço dedicado à cultura polonesa em Curitiba, criado com forte participação de artistas locais."),
        ObraDeArte(titulo: "Fonte de Jerusalém", artista: "Ricardo Todt", ano: 1996, estilo: "Escultura Monumental", imagemNome: "fonte_jerusalem", descricao: "A Fonte de Jerusalém, criada pelo escultor curitibano Ricardo Todt, é uma obra monumental que homenageia as três grandes religiões monoteístas e se tornou um ícone artístico da cidade."),
        ObraDeArte(titulo: "Parque Barigui", artista: "Rafael Camargo", ano: 2015, estilo: "Pintura Impressionista", imagemNome: "parque_barigui", descricao: "Rafael Camargo, artista curitibano, retrata o pôr do sol sobre o lago do Parque Barigui em seu estilo impressionista.")
    ]

    //obra atualmente selecionada
        @Published var obraSelecionada: ObraDeArte?

        //texto padrao
        @Published var searchText: String = ""

        //pesquisa com base na escolha do user
        var obrasFiltradas: [ObraDeArte] {
            if searchText.isEmpty {
                return obras
            } else {
                return obras.filter {
                    $0.titulo.localizedCaseInsensitiveContains(searchText) ||
                    $0.artista.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    }
