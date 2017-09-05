class Cadastro < SitePrism::Page

element :create_button, :xpath, '//*[@id="quickcreatetop"]/a'
element :create_task_button, '.last'
element :subject_field, "#name"
element :status_select_field , "#status"
element :data_field, "#date_start_date"
element :priority_select_field, "#priority"
elements :save_button, :xpath, '//*[@id="SAVE"]'


def cadastrar_usuario (nome)
	create_button.click
	create_task_button.click
	subject_field.set(nome)
	status_select_field.select('In Progress')
	data_field.set('01/01/1998')
	priority_select_field.select('Low')
	save_button[1].click

end
end