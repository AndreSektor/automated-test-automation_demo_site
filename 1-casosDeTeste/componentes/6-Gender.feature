#language:pt

Funcionalidade: Cadastro
    @Gender
    Cenário: Campo Gender deve não deve ser submetido "desmarcado"(não selecionado)
    [Descrição]
    - Validar que o campo "Gender" não deverá ser submetido desmarcado
    [Pré-condição]
    - Campo Gender está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo obrigatório*
    [Script de teste]
    Dado que acesso ao campo "Gender";
    Quando submeto o formulário; 
    Então valido que o usuário receberá um informativo "campo obrigatório*".
    [resultado esperado]
    - Validar que o campo "Gender" não deverá ser submetido desmarcado o usuário será informado com mensagem "campo obrigatório*"

    @Gender
    Cenário: Campo Gender deve aceitar apenas uma marcação(Male, FeMale)
    [Descrição]
    - Validar que o campo "Gender" deverá apenas aceitar uma marção 
    [Pré-condição]
    - Campo Gender está limpo
    [Pós-condição]
    - Validar a marcação de um campo apenas
    [Script de teste]
    Dado que faço uma marcação no campo "Gender";
    Quando submeto o formulário; 
    Então valido que a informação foi gravada com sucesso.
    [resultado esperado]
    - Validar que o campo "Gender" deverá aceitar apenas uma marção para submeter as informações do formulário