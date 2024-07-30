#language: pt

Funcionalidade: Navegação de App Avengers e efetuando cadastro
        Acesso APP Avengers
        Acesso menu de cadastro
        efetuo cadastro com sucesso

    @teste_cadastro
    Cenario: Abrir menu do app e efetuar o cadastro
    Dados que acesso o menu do app de cadastro
    Quando submeto meus dados de cadastro
        | nome   | dianinha         |
        | email  | diana@gmail.com  | 
        | senha  | 1234             |
        | perfil | UX               |
    Então devo validar a mensagem "Tudo certo, recebemos seus dados!"