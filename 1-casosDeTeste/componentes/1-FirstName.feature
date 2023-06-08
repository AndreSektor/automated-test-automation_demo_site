#language:pt

Funcionalidade: Cadastro
    @FirstName
    Cenário: Campo First Name deve aceitar apenas caracteres(letras)
    [Descrição]
    - Validar que o campo "First Name" deverá aceitar apenas caracteres
    [Pré-condição]
    - Campo First Name está limpo
    [Pós-condição]
    - Visualizar caracteres inseridos no campo
    [Script de teste]
    Dado que realizo acesso o campo "First Name";
    Quando preencho o campo caracteres; 
    Então valido que o campo aceita caracteres(letras).
    [resultado esperado]
    - Validar que o campo "First Name" aceita caracteres(Letras)

    @FirstName
    Cenário: Campo First Name deve não deve ser submetido "vazio"
    [Descrição]
    - Validar que o campo "First Name" não deverá ser submetido vazio
    [Pré-condição]
    - Campo First Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo obrigatório*
    [Script de teste]
    Dado que acesso ao campo "First Name";
    Quando o submeto vazio; 
    Então valido que o usuário receberá um informativo "campo obrigatório*".
    [resultado esperado]
    - Validar que o campo "First Name" não deve ser submetido vazio o usuário será informado com mensagem "campo obrigatório*"

    @FirstName
    Cenário: Campo First Name deve não deve ser submetido "com espaço em branco"
    [Descrição]
    - Validar que o campo "First Name" não deverá ser submetido come espaço em branco
    [Pré-condição]
    - Campo First Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo obrigatório*
    [Script de teste]
    Dado que acesso ao campo "First Name";
    Quando realizo o preenchimento com espaço/s vazio/s; 
    E o submeto;
    Então valido que o usuário receberá um informativo "campo obrigatório*".
    [resultado esperado]
    - Validar que o campo "First Name" não deverá aceitar espaço/s vazio/s e usuário será informado com mensagem "campo obrigatório*"
        
    @FirstName
    Cenário: Campo First Name não deverá aceitar números
    [Descrição]
    - Validar que o campo "First Name" não deverá aceitar números
    [Pré-condição]
    - Campo First Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo deve ser preenchido com o primeriro nome*
    [Script de teste]
    Dado que realizo acesso o campo "First Name";
    Quando preencho o campo números; 
    Então valido que o usuário receberá um informativo "campo deve ser preenchido com o primeriro nome*".
    [resultado esperado]
    - Validar que o campo "First Name" não deverá aceitar números e usuário será informado com mensagem "campo deve ser preenchido com o primeriro nome*"   

    @FirstName
    Cenário: Campo First Name não deverá aceitar caracteres especiais
    [Descrição]
    - Validar que o campo "First Name" não deverá aceitar caracteres especiais
    [Pré-condição]
    - Campo First Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo deve ser preenchido com o primeriro nome*
    [Script de teste]
    Dado que realizo acesso o campo "First Name";
    Quando preencho o campo caracteres especiais; 
    Então valido que o usuário receberá um informativo "campo deve ser preenchido com o primeriro nome*".
    [resultado esperado]
    - Validar que o campo "First Name" não deverá aceitar caracteres especiais e usuário será informado com mensagem "campo deve ser preenchido com o primeriro nome*" 

    @FirstName
    Cenário: Campo First Name não deverá aceitar mais de duas palavras
    [Descrição]
    - Validar que o campo "First Name" não deverá aceitar mais de duas palavras
    [Pré-condição]
    - Campo First Name está limpo
    [Pós-condição]
    - Visualizar mensagem informativa de campo deve ser preenchido com o primeriro nome*
    [Script de teste]
    Dado que realizo acesso o campo "First Name";
    Quando preencho o campo mais de duas palavras; 
    Então valido que o usuário receberá um informativo "campo deve ser preenchido com o primeriro nome*".
    [resultado esperado]
    - Validar que o campo "First Name" não deverá aceitar mais de duas palavras e usuário será informado com mensagem "campo deve ser preenchido com o primeriro nome*" 