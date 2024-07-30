#language: pt

Funcionalidade: Navegação de App Avengers
        Acesso APP Avengers
        Acesso menu de login
        efetuo login com sucesso ou sem sucesso

    @teste_login
    Cenario: Abrir Menu do App e efetuar login
        Dado que acesso o menu do app buscando por login
        Quando submeto minhas submeto minhas credenciais
        | email  | diana@gmail.com  | 
        | senha  | 1234             |  
        Então devo validar a mensagem