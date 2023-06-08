#language:pt

Funcionalidade: Cadastro
    @Password
    Cenário: Validar que campo Confirm Password só deverá ser submetido quando estiver em conformidade com o campo Password
    [Descrição]
    - Validar que o usuário só poderá submeter o campo quando estiver conforme o campo Password.
    [Pré-condição]
    - O campo password estiver preenchido
    [Prós-condição]
    - Apenas submeter campo quando estiver conforme
    [Script de teste]
    Dado que acesso o campo Confirm Password;
    Quando submeto uma senha conforme a do campo Password;
    Então valido que o campo é submetido com sucesso.
    [Resultado esperado]
    - Validar que o usuário só poderá submeter o campo quando estiver conforme o campo Password

