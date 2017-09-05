class Excluir < SitePrism::Page

element :actitivies_button, '#grouptab_3'
element :tasks_button, '#moduleTab_6_Tasks'	
#element :acessar_usuario, "div#"
element :acessar_usuario, :xpath, '//*[@id="MassUpdate"]/div[3]/table/tbody/tr[20]/td[4]/b/a'
element :action_button, :xpath, '//*[@id="tab-actions"]/a'
element :delete_button, "input[name='Delete']"


def excluir_usuario
	actitivies_button.click
	tasks_button.click
	acessar_usuario.click
	action_button.click
	delete_button.click
    page.driver.browser.switch_to.alert.accept

end
end