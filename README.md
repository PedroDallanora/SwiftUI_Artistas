Alunos: Pedro Dallanora, Pedro Felix, Felipe Kureski, Felipe Schneider e Felipe Martins

#Estrutura do Aplicativo
##1. Modelagem de Dados
A estrutura ObraDeArte representa cada obra na galeria, contendo propriedades como
título, artista, ano, estilo, nome da imagem e descriçã o. Cada obra é identificada de forma
ú nica com um UUID, garantindo controle individual no uso com LazyVGrid e navegaçã o.
2. Gerenciamento de Estado
Adotou-se o padrã o MVVM com o uso do GaleriaViewModel, que gerencia:
-
A lista completa de obras.
-
O texto de pesquisa digitado pelo usuá rio.
-
A filtragem das obras exibidas com base na busca por título ou artista.
A atualizaçã o da interface ocorre reativamente com o uso de @Published, @StateObject e
@EnvironmentObject.
3. Interface e Layout
A interface principal utiliza LazyVGrid com colunas adaptá veis definidas por
GridItem(.adaptive(...)). O nú mero de colunas se ajusta automaticamente conforme o
tamanho da tela, oferecendo suporte a iPhones e iPads. O layout conta com espaçamentos,
sombras e cantos arredondados para melhor legibilidade e estética.
4. Navegação e Detalhamento
A navegaçã o entre as telas é feita com NavigationStack, que garante compatibilidade
adequada para dispositivos maiores como o iPad. Ao selecionar uma obra, o usuá rio é
redirecionado à tela de detalhes, onde sã o apresentados todos os dados relevantes da obra
de arte em um layout vertical com foco em clareza e organizaçã o.
5. Recursos Extras
-
Animaçõ es suaves ao tocar em uma obra ou ao transitar entre telas.
-
Barra de pesquisa funcional que filtra a galeria dinamicamente por título ou artista.
-
Botã o de compartilhamento na tela de detalhes, permitindo ao usuá rio divulgar a obra
diretamente via sistemas nativos do iOS.
Explicação por Arquivo
ObraDeArte.swiL
Define a estrutura de dados ObraDeArte, responsável por representar cada obra exibida no
aplicativo. Inclui propriedades como título, artista, ano, estilo, nome da imagem e descriçã o.
A estrutura é identificável por UUID, permitindo uso em listas com SwiftUI.
GaleriaViewModel.swiL
Contém a classe GaleriaViewModel que implementa a arquitetura MVVM. Gerencia a lista de
obras, o texto de busca e fornece uma lista filtrada para exibiçã o. Usa propriedades reativas
com @Published para atualizar dinamicamente a interface.
GaleriaView.swiL
Implementa a tela principal do aplicativo. Exibe as obras em uma grade responsiva
utilizando LazyVGrid, adaptando o nú mero de colunas ao tamanho da tela. Permite busca
por obras e navegaçã o para os detalhes.
DetalhesObraView.swiL
Tela de detalhes de uma obra de arte. Mostra imagem em destaque, informaçõ es completas
e inclui botã o para compartilhar os dados via recursos nativos do iOS. Utiliza ScrollView
para comportar todas as informaçõ es verticalmente.
Video:
https://www.youtube.com /watch?v=DlJJnupPa6Y
