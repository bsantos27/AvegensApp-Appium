Dado('que acesso o menu do app buscando por login') do
    @Navigator.tap_menu
    @Navigator.tap_option("FORMS")
    @Navigator.tap_option("LOGIN")
end

Quando('submeto minhas submeto minhas credenciais') do |table|
    user = table.rows_hash
    @LoginScreen.login(user[:email], user[:senha])
end

Então ('devo validar a mensagem') do
 @LoginScreen.msg
 expect(@LoginScreen.msg.displayed?).to be true
end