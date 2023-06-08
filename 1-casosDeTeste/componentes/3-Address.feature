#language:pt

Funcionalidade: Cadastro
    @Address
    Cenário: Campo Address deve aceitar quaisquer caracter(campo aberto)
    [Descrição]
    - Validar que o campo "Address" deve aceitar quaisquer caracter no seu preenchimento
    [Pré-condição]
    - Campo Address está limpo
    [Pós-condição]
    - Validar que o campo Address deve aceitar quaisquer caracter no seu preenchimento
    [Script de teste]
    Dado que realizo acesso o campo "Address";
    Quando preencho o campo com quaisquer caracteres; 
    Então valido que o campo é aberto para escrita.
    [resultado esperado]
    - Validar que o campo "Address" deve aceitar quaisquer caracteres no seu ato de preenchimento(campo aberto)

    @Address
    Cenário: Campo Address deve ter um limite de caracteres(400)
    [Descrição]
    - Validar que o campo "Address" deve ter um limite de preenchimento
    [Pré-condição]
    - Campo Address está limpo
    [Pós-condição]
    - Validar que o usuario de ser informado sobre um limite de caracteres do campo
    [Script de teste]
    Dado que realizo acesso o campo "Address";
    Quando preencho o campo com uma quantidade superior ao máximo suportado pelo campo; 
    Então valido que o usuário é informado sobre o limite de caracteres.
    [resultado esperado]
    - Validar que o campo "Address", ao sofrer uma inserção maior que o suportado como parâmentro de limite de caracteres, informará ao usuário a quantidade máxima