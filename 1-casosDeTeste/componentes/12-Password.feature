#language:pt

Funcionalidade: Cadastro
    @Password
    Cenário: Validar que campo password aceita caracteres alfanuméricos, letras minúsculas, maiúsculas e caracteres especiais
    [Descrição]
    - Validar que o usuário pode criar uma senha contendo letras maiúsculas, letras minúsculas, números e caracteres especiais.
    [Pré-condição]
    - N/A
    [Script de teste]
    Dado que acesso o campo password;
    Quando submeto uma senha contendo letras maiúsculas, letras minúsculas, números e caracteres especiais como "@Password123!";
    Então valido que a informação foi gravada com sucesso no campo.
    [Resultado esperado]
    - Validar que a informação foi inserida no campo com sucesso

    @Password
    Cenário: Validar que campo password não aceita espaços em branco
    [Descrição]
    - Validar que o usuário não pode criar uma senha contendo espaços em branco.
    [Pré-condição]
    - N/A
    [Script de teste]
    Dado que acesso o campo password;
    Quando submeto uma senha contendo espaços em branco como "Password 123";
    Então valido que a informação não foi gravada com sucesso no campo.
    [Resultado esperado]
    - A senha contendo espaços em branco não é aceita e salva corretamente no campo password.
    - Usuário deve receber uma notificação de campo de Password é inválido*

    @Password
    Cenário: Validar que campo password não aceita uma senha vazia
    [Descrição]
    - Validar que o usuário não pode criar uma senha vazia.
    [Pré-condição]
    - N/A
    [Script de teste]
    Dado que acesso o campo password;
    Quando submeto uma senha vazia;
    Então valido que a informação foi não gravada com sucesso no campo.
    [Resultado esperado]
    - A senha vazia não é aceita e salva corretamente no campo password.
    - Usuário deve receber uma notificação de campo obrigatório*

    @Password
    Cenário: Validar que ao digitar a informação no campo a mesma seja escondida com mascara.
    [Descrição]
    - Validar que usuário ao digitar um password o mesmo não seja exibido, apenas a mascara
    [Pré-condição]
    - N/A
    [Pós-condição]
    - Validar que a mascara está omitindo o password com sucesso
    [Script de teste]
    Dado que o usuário está inserindo sua senha;
    Quando visualiza o campo password; 
    Então valida que as informações do password não estão sendo exibidas apenas a mascara.
    [resultado esperado]
    - Validar que usuário ao digitar um password o mesmo não seja exibido, apenas a mascara

    @Password
    Cenário: Validar que o campo password deve ter uma quantidade mínima de caracteres(4).
    [Descrição]
    - Validar que usuário seja informado com o número mínimo de caracteres 
    [Pré-condição]
    - N/A
    [Pós-condição]
    - Validar que o input exibe uma mensagem de erro 
    [Script de teste]
    Dado que que acesso campo password;
    Quando o usuário inseri uma senha com 3 caracteres; 
    Então valido que é exibida uma mensagme de erro informando a quantidade mínima é de 4 caracteres*.
    [resultado esperado]
    - Validar que o usuário seja informado ao digitar uma quantidade mínima de caracteres  
   