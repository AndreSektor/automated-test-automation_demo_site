#language:pt

Funcionalidade: Cadastro
   @LaststName
    Cenário: Campo Last Name deve aceitar apenas caracteres(letras)
    [Descrição]
    - Validar que o campo "Last Name" deverá aceitar apenas caracteres
    [Pré-condição]
    - Campo Last Name está limpo
    [Pós-condição]
    - Visualizar caracteres inseridos no campo
    [Script de teste]
    Dado que realizo acesso o campo "Last Name";
    Quando preencho o campo caracteres; 
    Então valido que o campo aceita caarcteres(letras).
    [resultado esperado]
    - Validar que o campo "Last Name" aceita caracteres(Letras)

    @LastName
    Cenário: Campo Last Name deve não deve ser submetido "vazio"
    [Descrição]
    - Validar que o campo "Last Name" não deverá ser submetido vazio
    [Pré-condição]
    - Campo Last Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo obrigatório*
    [Script de teste]
    Dado que acesso ao campo "Last Name";
    Quando realizo o preenchimento com espaço/s vazio/s; 
    Então valido que o usuário receberá um informativo "campo obrigatório*".
    [resultado esperado]
    - Validar que o campo "Last Name" não deverá aceitar espaço/s vazio/s e usuário será informado com mensagem "campo obrigatório*"
        
    @LastName
    Cenário: Campo Last Name não deverá aceitar números
    [Descrição]
    - Validar que o campo "Last Name" não deverá aceitar números
    [Pré-condição]
    - Campo Last Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo deve ser preenchido com o sobre nome*
    [Script de teste]
    Dado que realizo acesso o campo "Last Name";
    Quando preencho o campo números; 
    Então valido que o usuário receberá um informativo "campo deve ser preenchido com o sobre nome*".
    [resultado esperado]
    - Validar que o campo "Last Name" não deverá aceitar números e usuário será informado com mensagem "campo deve ser preenchido com o sobre nome*"   

    @LastName
    Cenário: Campo Last Name não deverá aceitar caracteres especiais
    [Descrição]
    - Validar que o campo "Last Name" não deverá aceitar caracteres especiais
    [Pré-condição]
    - Campo Last Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo deve ser preenchido com o sobre nome*
    [Script de teste]
    Dado que realizo acesso o campo "Last Name";
    Quando preencho o campo caracteres especiais; 
    Então valido que o usuário receberá um informativo "campo deve ser preenchido com o sobre nome*".
    [resultado esperado]
    - Validar que o campo "Last Name" não deverá aceitar caracteres especiais e usuário será informado com mensagem "campo deve ser preenchido com o sobre nome*" 

    @LastName
    Cenário: Campo Last Name não deverá aceitar mais de duas palavras
    [Descrição]
    - Validar que o campo "Last Name" não deverá aceitar mais de duas palavras
    [Pré-condição]
    - Campo Last Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo deve ser preenchido com o sobre nome*
    [Script de teste]
    Dado que realizo acesso o campo "Last Name";
    Quando preencho o campo mais de duas palavras; 
    Então valido que o usuário receberá um informativo "campo deve ser preenchido com o sobre nome*".
    [resultado esperado]
    - Validar que o campo "Last Name" não deverá aceitar mais de duas palavras e usuário será informado com mensagem "campo deve ser preenchido com o sobre nome*" 