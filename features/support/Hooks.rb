Before do
  # Aqui você coloca tudo que você quer executar antes de cada cenário.
  # Por exemplo um fluxo de Login, onde pra iniciar o teste o pré requisito é estar logado.
  #page.driver.browser.manage.window.maximize
  # Já diz tudo o que ele faz neh (nesse caso específico). Ele coloca o navegador em formato maximizado.
end

Before  do
  # Aqui você coloca tudo que você quer executar antes de algum cenário.
  # ('@general') foi só um nome que eu dei para esse before, pois nem sempre tenho que rodar todos os befores que existem, caso eu tenha algum before específico para rodar antes de algum cenário, eu tenho que dar um nome a ele e chamá-lo no meu arquivo de feature. Veremos isso mais pra frente =).
end

After do
  diretorio = 'screenshots'
  arquivo = "#screenshots/#scenario.name.png"
  Capybara.save_screenshot
  #Capybara.reset_sessions!
  # Nesse caso específico, ele da um reset na sessão do navegador após os testes.
end

After do 
	#if Cadastro.passed?
	   #('/path/to/file.png') , :full => true)
  # Segue o mesmo esquema do Before, só que agora ele faz um After específico para o fim de um cenário específico.
end