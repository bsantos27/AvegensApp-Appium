Dado('que acesso o menu do app de cadastro') do
    @Navigator.tap_menu
    @Navigator.tap_option("FORMS")
    @Navigator.tap_option("CADASTRO")
end

Quando('submeto meus dados de cadastro') do |table|
    user = table.rows_hash
    @CadastroScreen.cadastro(user[:nome], user[:email], user[:senha])
    @CadastroScreen.tap_cad_option(user[:perfil])
    @CadastroScreen.click_cadastro
end
  
Então('devo validar a mensagem {string}') do |mensagem_esperada|
    expect(@CadastroScreen.mensagem_esperada.text).to include(mensagem_esperada)
end