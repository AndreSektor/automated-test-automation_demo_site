#language:pt

Funcionalidade: Cadastro
    @EscolherArquivos
    Cenário: Validar que seção "Escolher Arquivos" está carregando dados nós formatos JPEG (ou JPG), GIF, BMP, TIFF, WebP, SVG e .PNG
    [Descrição]
    - Validar que o campo Escolher Arquivos está carregando arquivos de diferentes extenções com sucesso
    [Pré-condição]
    - Ter arquivo para inserir
    [Script de teste]
    Dado que acesso a seção "Escolher Arquivo";
    Quando submeto um arquivo em alguma das extensões citadas;
    Então valido que o arquivo é carregado com sucesso.
    [Resultado esperado]
    - Validar que o campo Escolher Arquivos está carregando arquivos de diferentes extenções com sucesso.