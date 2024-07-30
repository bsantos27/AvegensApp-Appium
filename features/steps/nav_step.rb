Dado('que acesso o menu do app') do
  @Navigator.tap_lista
  expect(@Navigator.list.displayed?).to be true
end

Quando('seleciono o Heroi da lista') do |table|
  lista_heroi = table.hashes.first
  @Navigator.selecionar_heroi(lista_heroi['Heroi'])
end

Então('devo ver a mensagem {string}') do |mensagem_esperada|
    expect(@Navigator.mensagem_esperada.text).to include(mensagem_esperada)
end