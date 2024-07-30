class CadastroScreen
    def cadastro(nome, email, senha)
        find_element(id: 'io.qaninja.android.twp:id/etUsername').send_keys(nome)
        find_element(id: 'io.qaninja.android.twp:id/etEmail').send_keys(email)
        find_element(id: 'io.qaninja.android.twp:id/etPassword').send_keys(senha)
    end

    def tap_cad_option(target)
        find_element(id: 'android:id/text1').click
        find_element(xpath: "//*[@text='#{target}']").click
    end

    def click_cadastro
        return find_element(id: 'io.qaninja.android.twp:id/btnSubmit').click
    end

    def mensagem_esperada
        return find_element(xpath: '//android.widget.Toast[@text="Tudo certo, recebemos seus dados!"]')
    end
end