#language:pt

Funcionalidade: Cadastro
    @Submit
    Cenário: Realizar cadastro com sucesso
    [Descrição]
    - Validar que usuário ao realizar o preenchimento completo do formulário terá o cadastro realizado com sucesso
    [Pré-condição]
    - N/A
    [Pós-condição]
    - Valida cadastro com sucesso
    [Script de teste]
    Dado que acesso a aba Register;
    Quando preencho o formulário por completo; 
    Então valido que as informações foram gravadas com sucesso.
    [resultado esperado]
    - Validar que usuário ao realizar o preenchimento completo do formulário terá as informações gravadas com sucesso

    @Refresh
    Cenário: Validar que usuário ao preencher todo o formulário pode realizar a ação de Refresh
    [Descrição]
    - Validar que usuário ao preencher todo o formulário pode realizar a ação de Refresh com sucesso
    [Pré-condição]
    - Ter formulário preenchido
    [Pós-condição]
    - Valida que o formulário será totalmente limpo
    [Script de teste]
    Dado que tenho um formulário totalmente preenchido;
    Quando realizo a ação de Refresh; 
    Então valido que o formulário foi totalmente limpo com sucesso.
    [resultado esperado]
    - Validar que usuário ao realizar ação de Refresh no formulário preenchido o formulário será limpo com sucesso