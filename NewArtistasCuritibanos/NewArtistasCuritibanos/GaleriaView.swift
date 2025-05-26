// View principal
import SwiftUI

struct GaleriaView: View {
    @EnvironmentObject var viewModel: GaleriaViewModel

    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    //grade que se adapta cm o tamnho da tela
                    let columns = [
                        GridItem(.adaptive(minimum: geometry.size.width > 700 ? 250 : 160), spacing: 16)
                    ]

                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(viewModel.obrasFiltradas) { obra in
                            NavigationLink(destination: DetalhesObraView(obra: obra)
                                            .transition(.move(edge: .trailing))
                                            .animation(.easeInOut, value: obra.id)) {
                                //Cell individual para cada obra
                                VStack(alignment: .leading, spacing: 8) {
                                    Image(obra.imagemNome)
                                        .resizable()
                                        .aspectRatio(1, contentMode: .fit)
                                        .frame(maxWidth: .infinity)
                                        .cornerRadius(12)

                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(obra.titulo)
                                            .font(.headline)
                                            .foregroundColor(.primary)
                                            .lineLimit(1)

                                        Text(obra.artista)
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                .padding()
                                .background(Color(.systemBackground))
                                .cornerRadius(12)
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                                .scaleEffect(0.98)
                                .animation(.easeInOut(duration: 0.2), value: obra.id)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Galeria Curitibana")
                .searchable(text: $viewModel.searchText)
            }
        }
    }
}
