#language:pt

Funcionalidade: Cadastro
    @Skills
    Cenário: Validar que usuário pode fazer seleção de skill com sucesso
    [Descrição]
    - Validar que usuário pode fazer seleção de skill com sucesso no formulário
    [Pré-condição]
    - N/A
    [Pós-condição]
    - Validar adição de skill com sucesso no formulário
    [Script de teste]
    Dado que acesso a seção Skills;
    Quando faço a seleção de uma Skill; 
    Então valido que a skill foi adicionada com sucesso no formulário.
    [resultado esperado]
    - Validar que ao selecionar uma skill a mesma será inserida com sucesso no formulário
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido

    @Skills
    Cenário: Validar que usuário pode subscrever uma skill com sucesso
    [Descrição]
    - Validar que usuário pode subscrever um skill pré-selecionada com sucesso no formulário
    [Pré-condição]
    - Ter selecionado uma skill
    [Pós-condição]
    - Valida edição dos dados da skill com sucesso no formulário
    [Script de teste]
    Dado que faço a seleção de uma skill;
    Quando subscrevo por outra skill; 
    Então valido que a edição foi realizada com sucesso no formulário.
    [resultado esperado]
    - Validar que ao selecionar uma skill a mesma pode ser subscrita por outra com sucesso
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido