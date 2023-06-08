#language:pt

Funcionalidade: Cadastro
    @Phone
    Cenário: Campo Phone deve aceitar números de telefone válidos
    [Descrição]
    - Validar que o campo "Phone" deve aceitar números de telefones válidos
    [Pré-condição]
    - Campo Phone está limpo
    [Pós-condição]
    - Validar que o usuario preencha um número de telefone válido e não seja notificado
    [Script de teste]
    Dado que preencho o campo "Phone" com um número de telefone válido;
    Quando submeto o formulário; 
    Então valido que o usuário não será notificado.
    [resultado esperado]
    - Validar que o usuario não receba uma notificação ao submeter um formulário com um número de telefone correto 

    @Phone
    Cenário: Campo Phone deve aceitar números de telefone com diferentes formatos válidos((XX)XXXXX-XXXX, +XX XX XXXXX-XXXX, XX XXXXX-XXXX) 
    [Descrição]
    - Validar que o campo "Phone" deve aceitar números com diferentes formatos de telefones válidos
    [Pré-condição]
    - Campo Phone está limpo
    [Pós-condição]
    - Validar que o usuario preencha um número de telefone com diferentes formatos válidos e não seja notificado
    [Script de teste]
    Dado que preencho o campo "Phone" com um número e formato de telefone válido;
    Quando submeto o formulário; 
    Então valido que o usuário não será notificado.
    [resultado esperado]
    - Validar que o usuario não receba uma notificação ao submeter um formulário com um número e formato de telefone válido 

    @Phone
    Cenário: Campo Phone deve não deve ser submetido "vazio"
    [Descrição]
    - Validar que o campo "Phone" não deverá ser submetido vazio
    [Pré-condição]
    - Campo Phone está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo obrigatório*
    [Script de teste]
    Dado que acesso ao campo "Phone";
    Quando o submeto vazio; 
    Então valido que o usuário receberá um informativo "campo obrigatório*".
    [resultado esperado]
    - Validar que o campo "Phone" não deve ser submetido vazio o usuário será informado com mensagem "campo obrigatório*"

    @Phone
    Cenário: Campo Phone deve não deve ser submetido "com espaço em branco"
    [Descrição]
    - Validar que o campo "Phone" não deverá ser submetido come espaço em branco
    [Pré-condição]
    - Campo Phone está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo obrigatório*
    [Script de teste]
    Dado que acesso ao campo "Phone";
    Quando realizo o preenchimento com espaço/s vazio/s; 
    E o submeto;
    Então valido que o usuário receberá um informativo "campo obrigatório*".
    [resultado esperado]
    - Validar que o campo "Phone" não deverá aceitar espaço/s vazio/s e usuário será informado com mensagem "campo obrigatório*"

    @Phone
    Cenário: Campo Phone deve não deve aceitar caracteres(letras e !@#$%&...)
    Exceção.: " () - + " 
    [Descrição]
    - Validar que o campo "Phone" não deverá aceitar caracteres
    [Pré-condição]
    - Campo Phone está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo Phone é inválido*
    [Script de teste]
    Dado que acesso ao campo "Phone";
    Quando realizo o preenchimento com caracteres; 
    E o submeto;
    Então valido que o usuário receberá um informativo "campo Phone é inválido*".
    [resultado esperado]
    - Validar que o campo "Phone" não deverá aceitar caracteres e usuário será informado com mensagem "campo Phone é inválido*"