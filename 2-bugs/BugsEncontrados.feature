#language:pt

    Cenário: Realizar cadastro 
    @Bug - CRÍTICO - Impossibilidade de gravar informações na plataforma
    [Descrição]
    - O select de "Country" não trás informações do banco sendo assim impossibilita a realização de registro de usuário 
    [Script de teste]
    Dado que desejo realizar um cadastro;
    Quando que acesso o select "Country"; 
    Então valido que as informações não estão sendo trazidas para o usuário.
    [resultado esperado]
    - Validar que usuário posso selecionar uma opção de Country(Pais)

    Cenário: Realizar cadastro
    @Bug 
    [Descrição]
    - O select de "Languages" não apresenta o icone de SETA intuitivo 
    [Script de teste]
    Dado que acesso o select "Languages";
    Quando visualizo o campo;
    Então valido que não apresenta o icone intuitivo do menu select.
    [resultado esperado]
    - Validar que todos as seções de select apresentem os mesmos icones

    Cenário: Realizar cadastro
    @Bug 
    [Descrição]
    - Os campos "Password" e "Confirm Password" devem apresentar o "*" de campos obrigatórios
    [Script de teste]
    Dado que as seções "Password"/"Confirm Password";
    Quando visualizo os campos;
    Então valido que não apresenta o icone "*" de campos obrigatórios.
    [resultado esperado]
    - Todos os campos de password devem ser obrigatórios

    Bug: Campo First Name 
    @BugFirstName
    [Descrição do Bug]
    - Ao acessar o campo FirstName usuário consegue digitar:
    - números 
    - caracteres especiais
    - espaços em branco
    - submeter o campo com espaço em branco
    - escrever mais de duas palavras
    [Passo a passo]
    - Acessar o campo First Name e realizar ação do item acima

    Bug: Campo Last Name 
    @BugLastName
    [Descrição do Bug - passo a passo]
    - Ao acessar o campo LastName usuário consegue digitar:
    - números 
    - caracteres especiais
    - espaços em branco
    - submeter o campo vazio
    - escrever mais de duas palavras

    Bug: Campo Address
    @BugCampoAddress
    [Descrição do Bug - passo a passo]
    - Ao acessar o campo Address:
    - não existe limíte de caracteres

    Bug: Campo Email address
    @BugCampoEmailAddress
    [Descrição do Bug - passo a passo]
    - Ao acessar o campo Email address:
    - o campo aceitar ser submetido com domínio inválido
    - o campo aceita ser submetido com abstinência de ".com, .br, etc..." 