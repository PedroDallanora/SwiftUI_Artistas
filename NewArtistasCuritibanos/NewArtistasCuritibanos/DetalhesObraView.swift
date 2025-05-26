//
//  DetalhesObraView.swift
//  NewArtistasCuritibanos
//
//  Created by Pedro Dallanora Bittencourt on 20/05/25.
//

// View dos detalhes de uma obra
import SwiftUI

struct DetalhesObraView: View {
    let obra: ObraDeArte
    @State private var isSharePresented: Bool = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Imagem
                Image(obra.imagemNome)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .shadow(radius: 8)
                    .transition(.opacity)
                    .animation(.easeInOut(duration: 0.3), value: obra.id)

                // Display das infos
                VStack(alignment: .leading, spacing: 8) {
                    Text(obra.titulo)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Artista: \(obra.artista)")
                        .font(.title3)
                        .foregroundColor(.secondary)

                    Text("Ano: \(obra.ano)")
                        .font(.subheadline)

                    Text("Estilo: \(obra.estilo)")
                        .font(.subheadline)
                        .italic()

                    Divider()

                    Text(obra.descricao)
                        .font(.body)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal)

                //botão para compartilhar a obra
                Button(action: {
                    isSharePresented = true
                }) {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                        Text("Compartilhar")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding(.horizontal)
                .sheet(isPresented: $isSharePresented) {
                    let shareText = "\(obra.titulo) por \(obra.artista) (\(obra.ano)) - \(obra.estilo)\n\n\(obra.descricao)"
                    ActivityView(activityItems: [shareText])
                }

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Detalhes da Obra")
        .navigationBarTitleDisplayMode(.inline)
    }
}
