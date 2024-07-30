#language: pt

Funcionalidade: Navegação de App Avengers
        Acesso APP Avengers
        Seleciono um Heroi
        e Valido que foi selecionado com sucesso

    @teste_selecao_heroi
    Cenario: Abrir Menu do App e selecionar um heroi e validar que o mesmo está validado
        Dado que acesso o menu do app
        Quando seleciono o Heroi da lista
        | Heroi  |
        | Thor   |
        Então devo ver a mensagem "Deus do Trovão, príncipe herdeiro de Asgard"