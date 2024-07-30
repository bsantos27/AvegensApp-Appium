class Navigator

  def tap_lista
    return find_element(xpath: '//androidx.recyclerview.widget.RecyclerView[@resource-id="io.qaninja.android.twp:id/rvSubMenu"]/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout').click
  end

  def list
    return find_element(id: 'io.qaninja.android.twp:id/rvList')
  end

  def tap_menu
    return find_element(xpath: '//android.widget.ImageButton[@content-desc="Open navigation drawer"]').click
  end

  def selecionar_heroi(heroi)
    case heroi
    when 'Capitão America'
      @driver.find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[1]').click
    when 'Thor'
      @driver.find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[2]').click
    when 'Homem de Ferro'
      @driver.find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[3]').click
    when 'Hulk'
      @driver.find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[4]').click
    when 'Homem Aranha'
      @driver.find_element(xpath: '(//android.widget.ImageView[@content-desc="Icon"])[5]').click
    else
      puts 'Não encontrado'
    end
  end
  
  def mensagem_esperada
    return find_element(id: 'io.qaninja.android.twp:id/textAboutExtended')
  end

  def tap_option(target)
    find_element(xpath: "//*[@text='#{target}']").click
  end

end