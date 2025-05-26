# Galeria de Artistas Curitibanos

Aplicativo iOS desenvolvido em SwiftUI com o objetivo de valorizar a produção artística de Curitiba, exibindo obras de artistas com vínculo com a cidade. O projeto utiliza arquitetura MVVM, interface responsiva com LazyVGrid e funcionalidades como busca, animações e compartilhamento nativo.

## Alunos
- Pedro Dallanora  
- Pedro Felix  
- Felipe Kureski  
- Felipe Schneider  
- Felipe Martins  

## Estrutura do Aplicativo

### 1. Modelagem de Dados
A estrutura ObraDeArte representa cada obra na galeria, contendo propriedades como título, artista, ano, estilo, nome da imagem e descrição. Cada obra é identificada de forma única com um UUID, garantindo controle individual no uso com LazyVGrid e navegação.

### 2. Gerenciamento de Estado
Adotou-se o padrão MVVM com o uso do GaleriaViewModel, que gerencia:
- A lista completa de obras.
- O texto de pesquisa digitado pelo usuário.
- A filtragem das obras exibidas com base na busca por título ou artista.

A atualização da interface ocorre reativamente com o uso de @Published, @StateObject e @EnvironmentObject.

### 3. Interface e Layout
A interface principal utiliza LazyVGrid com colunas adaptáveis definidas por GridItem(.adaptive(...)). O número de colunas se ajusta automaticamente conforme o tamanho da tela, oferecendo suporte a iPhones e iPads. O layout conta com espaçamentos, sombras e cantos arredondados para melhor legibilidade e estética.

### 4. Navegação e Detalhamento
A navegação entre as telas é feita com NavigationStack, que garante compatibilidade adequada para dispositivos maiores como o iPad. Ao selecionar uma obra, o usuário é redirecionado à tela de detalhes, onde são apresentados todos os dados relevantes da obra de arte em um layout vertical com foco em clareza e organização.

### 5. Recursos Extras
- Animações suaves ao tocar em uma obra ou ao transitar entre telas.
- Barra de pesquisa funcional que filtra a galeria dinamicamente por título ou artista.
- Botão de compartilhamento na tela de detalhes, permitindo ao usuário divulgar a obra diretamente via sistemas nativos do iOS.

## Explicação por Arquivo

### ObraDeArte.swift
Define a estrutura de dados ObraDeArte, responsável por representar cada obra exibida no aplicativo. Inclui propriedades como título, artista, ano, estilo, nome da imagem e descrição. A estrutura é identificável por UUID, permitindo uso em listas com SwiftUI.

### GaleriaViewModel.swift
Contém a classe GaleriaViewModel que implementa a arquitetura MVVM. Gerencia a lista de obras, o texto de busca e fornece uma lista filtrada para exibição. Usa propriedades reativas com @Published para atualizar dinamicamente a interface.

### GaleriaView.swift
Implementa a tela principal do aplicativo. Exibe as obras em uma grade responsiva utilizando LazyVGrid, adaptando o número de colunas ao tamanho da tela. Permite busca por obras e navegação para os detalhes.

### DetalhesObraView.swift
Tela de detalhes de uma obra de arte. Mostra imagem em destaque, informações completas e inclui botão para compartilhar os dados via recursos nativos do iOS. Utiliza ScrollView para comportar todas as informações verticalmente.

## Video
 https://www.youtube.com/watch?v=DlJJnupPa6Y
