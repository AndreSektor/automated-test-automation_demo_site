#language:pt

Funcionalidade: Cadastro
    @Hobbies
    Cenário: Campo Hobbies deve aceitar mais de uma marcação(Criket, Movies e Hockey)
    [Descrição]
    - Validar que o campo "Hobbies" deverá aceitar mais de uma marção 
    [Pré-condição]
    - Campo Hobbies está limpo
    [Pós-condição]
    - Validar a marcação de varios campos 
    [Script de teste]
    Dado que faço todas as marcações no campo "Hobbies";
    Quando submeto o formulário; 
    Então valido que todas as informações foram gravadas com sucesso.
    [resultado esperado]
    - Validar que o campo "Hobbies" deverá aceitar todas as marções preenchidas para submeter as informações do formulário
    - CAMPO NÃO OBRIGATÓRIO, aceita ser submetido não preenchido