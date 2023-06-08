#language:pt

Funcionalidade: Cadastro
    @Languages
    Cenário: Ao selecionar uma linguagem do select Languages, a mesma deve ser retirada da listagem
    [Descrição]
    - Validar que ao selecionar um linguagem a mesma não será mas exibida na listagem
    [Pré-condição]
    - Campo Languages está completo 
    [Pós-condição]
    - Validar retirada da linguagem do item de select
    [Script de teste]
    Dado que faço a seleção de uma linguagem no campo "Languages";
    Quando visualiso a lista do select; 
    Então valido que a linguagem foi retirada com sucesso.
    [resultado esperado]
    - Validar que ao selecionar uma linguagem no select do campo "Languages" a mesma não será mas exibida na listagem 

    @Languages
    Cenário: Ao retirar uma linguagem selecionada do select Languages, a mesma voltará a ser exibina na listagem
    [Descrição]
    - Validar que ao retirar um linguagem selecionada a mesma voltará a ser exibida na listagem
    [Pré-condição]
    - Ter selecionado uma linguagem
    [Pós-condição]
    - Validar que ao retirar uma linguagem previamente selecionada a mesma voltará a ser exibida no select
    [Script de teste]
    Dado que retiro uma linguagem pré-selecionada;
    Quando visualiso a lista do select; 
    Então valido que a linguagem foi inserida no select para ser novamente selecionada com sucesso.
    [resultado esperado]
    - Validar que ao retirar uma linguagem pré-selecionada a mesma ficará novamente sendo apresentada na listagem para uma nova seleção 
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido