#language:pt

Funcionalidade: Cadastro
    @SelectCountry
    Cenário: Validar que usuário pode pesquisar um pais atravez da barra de pesquisa no campo "Select Country"
    [Descrição]
    - Validar que usuário pode pesquisar um pais atravez da barra de pesquisa com sucesso no formulário
    [Pré-condição]
    - Abrir campo Select Country
    [Pós-condição]
    - Valida que campo de pesquisa está funcionado com sucesso
    [Script de teste]
    Dado que acesso o campo Select Country;
    Quando faço uma pesquisa por um pais disponível; 
    Então valido que o resultado da pesquisa é retornado com sucesso.
    [resultado esperado]
    - Validar que usuário pode pesquisar um pais disponível atravez da barra de pesquisa com sucesso no campo Select Country
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido    

    @SelectCountry
    Cenário: Validar que posso selecionar um pais com sucesso com sucesso
    [Descrição]
    - Validar que usuário pode selecionar um pais com sucesso no campo Select Country
    [Pré-condição]
    - Abrir campo Select Country
    [Pós-condição]
    - Valida inserção de pais com sucesso
    [Script de teste]
    Dado que acesso o campo Select Country;
    Quando seleciono um pais disponível para seleção; 
    Então valido que a adição pode ser feita com sucesso no formulário.
    [resultado esperado]
    - Validar que usuário pode selecionar um pais com sucesso no campo Select Country e submeter no formulario
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido      

    @SelectCountry
    Cenário: Validar que usuário pode subscrever um pais com sucesso
    [Descrição]
    - Validar que usuário pode subscrever um pais pré-selecionada com sucesso no formulário
    [Pré-condição]
    - Ter selecionado uma pais
    [Pós-condição]
    - Validar edição dos dados de um pais com sucesso no formulário
    [Script de teste]
    Dado que faço a seleção de um pais;
    Quando subscrevo por outra pais; 
    Então valido que a edição foi realizada com sucesso no formulário.
    [resultado esperado]
    - Validar que ao selecionar uma pais o memso pode ser subscrita por outra com sucesso
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido

    @SelectCountry
    Cenário: Validar mensagem "No results found"(Nenhum resultado encontrado) 
    [Descrição]
    - Validar mensagem No results found(Nenhum resultado encontrado), quando não tiver resultado no menu de busca 
    [Pré-condição]
    - N/A
    [Pós-condição]
    - Validar visualização da mensagem "No results found"
    [Script de teste]
    Dado que acesso o menu de busca do campo "Select Country";
    Quando realizo um busca que não existe; 
    Então valido que a mensagem, No results found, está sendo exibida com sucesso.
    [resultado esperado]
    - Validar mensagem No results found(Nenhum resultado encontrado), quando o usuário não tiver resultado no menu de busca está sendo exibida
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido