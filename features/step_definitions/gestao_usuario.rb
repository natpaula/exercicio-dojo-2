Dado(/^que esteja no site suitecrm$/) do 
  @acesso=Login.new.load
  @acesso=Login.new.log_in('will','will')
  @acesso=Login.new.login_button.click

end

#Quando(/^cadastrar novos dados de usuario com "([^"]*)"$/) do |nome_usuario|
Quando(/^cadastrar novos dados de "([^"]*)"$/) do |nome_usuario|
  @cadastro = Cadastro.new
  @cadastro.cadastrar_usuario nome_usuario
end
	
Entao(/^sistema cadastrara os dados com sucesso$/) do 
  assert_text('usuario_criado')
  assert_text('In Progress')
  assert_text('01/01/1998')
  assert_text('Low')
end

Quando(/^editar os dados do usuario "([^"]*)"$/) do |nome_usuario|                                   
  @alterar= Editar.new
  @alterar.editar_usuario nome_usuario
end                                                                               
                                                                                  
Entao(/^os dados serão alterados com sucesso$/) do                             
  assert_text('12/08/2016') 
  assert_text('usuario_alterado')
end      
 
Quando(/^excluir o usuario$/) do
  @excluir = Excluir.new
  @excluir.excluir_usuario
end

Então(/^o usuario será excluido com sucesso$/) do
 assert_text 'TASKS'
end                                                                                       



# #Quando(/^excluir o usuario "([^"]*)"$/) do                                   
#  # @excluir= Excluir.new
#   @excluir.excluir_usuario
  
# end                                                                               
                                                                                  
# Entao(/^o usuario será excluido com sucesso$/) do                                
 
# end                                                             