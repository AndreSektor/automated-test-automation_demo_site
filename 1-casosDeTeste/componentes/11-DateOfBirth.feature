#language:pt

Funcionalidade: Cadastro
    @DateOfBirth
    Cenário: Validar que ao selecionar um ano, mês e dia válidos o sistema deve aceitar corretamente a data de aniversário.
    [Descrição]
    - Validar que usuário ao selecionar um ano, mês e dia válidos o sistema deve aceitar corretamente a data de aniversário
    [Pré-condição]
    - N/A
    [Pós-condição]
    - Validar inserção de data de aniversário com sucesso
    [Script de teste]
    Dado que faço o preenchimento de uma data de aniversário;
    Quando submeto o formulário; 
    Então valido que a informação foi gravada com sucesso no formulário.
    [resultado esperado]
    - Validar que usuário ao selecionar um ano, mês e dia válidos o sistema deve aceitar corretamente a data de aniversário
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido    

    @DateOfBirth
    Cenário: Validar que o campo "Date Of Birth" não deve aceitar informações inválidas.
    [Descrição]
    - Validar que o campo Date Of Birth não deve aceitar informações inválidas, como um dia 31 em um mês com apenas 30 dias
    [Pré-condição]
    - N/A
    [Pós-condição]
    - Validar inserção de data de aniversário com sucesso
    [Script de teste]
    Dado que faço o preenchimento de uma data de aniversário;
    Quando submeto o formulário; 
    Então valido que a informação foi gravada com sucesso no formulário.
    [resultado esperado]
    - Validar que usuário ao selecionar um ano, mês e dia válidos o sistema deve aceitar corretamente a data de aniversário
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido 