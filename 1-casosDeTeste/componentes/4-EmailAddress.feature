#language:pt

Funcionalidade: Cadastro
    @EmailAddress
    Cenário: Campo Email address deve aceitar apenas endereços de e-mail válidos
    [Descrição]
    - Validar que o campo "Email address" aceita endereços de e-mails válidos
    [Pré-condição]
    - Campo Email address está limpo
    [Pós-condição]
    - Validar que o usuario não receba nenhuma notificação após preencher o campo com e-mail válido
    [Script de teste]
    Dado que realizo acesso o campo "Email address";
    Quando preencho o campo com um e-mail válido; 
    Então valido que o campo aceita a insersão com sucesso.
    [resultado esperado]
    - Validar que o campo "Email address" aceita endereços de e-mails válidos   

    @EmailAddress
    Cenário: Campo Email address não deve ser submetido "vazio"
    [Descrição]
    - Validar que o campo "Email address" ao ser submetido vazio deve ter um informativo para o usuário
    [Pré-condição]
    - Campo Email address está limpo
    [Pós-condição]
    - Validar que o usuario receba uma notificação ao submeter o formulário com o campo Email address vazio
    [Script de teste]
    Dado que deixo o campo "Email address" vazio no preenchiomento do formulário;
    Quando submeto o formulário; 
    Então valido que o usuário receberá um informativo "campo obrigatório*".
    [resultado esperado]
    - Validar que o usuario receba uma notificação ao submeter o formulário com o campo "Email address" vazio   

    @EmailAddress
    Cenário: Campo Email address não deve aceitar e-mail sem o símbolo "@"
    [Descrição]
    - Validar que o campo "Email address" não deve aceitar o preenchimento incorreto do e-mail faltando o simbolo "@"
    [Pré-condição]
    - Campo Email address está limpo
    [Pós-condição]
    - Validar que o usuario receba uma notificação ao submeter o formulário com o campo Email address com o símbolo "@" faltando
    [Script de teste]
    Dado que preencho o campo "Email address" sem o símbolo de "@";
    Quando submeto o formulário; 
    Então valido que o usuário receberá um informativo "campo de Email address é inválido*".
    [resultado esperado]
    - Validar que o usuario receba uma notificação ao submeter o formulário com o campo "Email address" vazio        

    @EmailAddress
    Cenário: Campo Email address não deve aceitar e-mail sem domínio(exemplo@)
    [Descrição]
    - Validar que o campo "Email address" não deve aceitar o preenchimento sem domínio 
    [Pré-condição]
    - Campo Email address está limpo
    [Pós-condição]
    - Validar que o usuario receba uma notificação ao submeter o formulário com o campo Email address sem domínio 
    [Script de teste]
    Dado que preencho o campo "Email address" sem domínio;
    Quando submeto o formulário; 
    Então valido que o usuário receberá um informativo "campo de Email address é inválido*".
    [resultado esperado]
    - Validar que o usuario receba uma notificação ao submeter o formulário com o campo "Email address" vazio  

    @EmailAddress
    Cenário: Campo Email address não deve aceitar e-mail com domínio inválido(exemplo@exemplo)
    [Descrição]
    - Validar que o campo "Email address" não deve aceitar o preenchimento com domínio inválido
    [Pré-condição]
    - Campo Email address está limpo
    [Pós-condição]
    - Validar que o usuario receba uma notificação ao submeter o formulário com o campo Email address com domínio inválido
    [Script de teste]
    Dado que preencho o campo "Email address" com domínio inválido;
    Quando submeto o formulário; 
    Então valido que o usuário receberá um informativo "campo de Email address é inválido*".
    [resultado esperado]
    - Validar que o usuario receba uma notificação ao submeter o formulário com o campo "Email address" com domínio inválido  

    @EmailAddress
    Cenário: Campo Email address deve notificar o usuário caso o e-mail tenha sido previamente cadastrado
    [Descrição]
    - Validar que o campo "Email address" não deve aceitar a duplicidade de um e-mail já cadastrado
    [Pré-condição]
    - Campo Email address está limpo
    [Pós-condição]
    - Validar que o usuario receba uma notificação ao submeter o formulário caso o e-mail tenha sido previamenta cadastrado
    [Script de teste]
    Dado que preencho o campo "Email address" com um e-mail que foi tenha sido previamenta cadastrado;
    Quando submeto o formulário; 
    Então valido que o usuário receberá um informativo "e-mail já cadastrado em nossa base de dados*".
    [resultado esperado]
    - Validar que o usuario receba uma notificação ao submeter um formulário com um e-mail já cadastrado na base de dados 