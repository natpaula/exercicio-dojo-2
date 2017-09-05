class Editar < SitePrism::Page

element :actitivies_button, '#grouptab_3'
element :tasks_button, '#moduleTab_6_Tasks'
element :id_usuario_link, "#edit-100d74bd-f2b3-fede-236e-596cef1a9696"
element :subject_field, "#name"
element :data_field, "#date_start_date"
elements :save_button, :xpath, '//*[@id="SAVE"]'
element :select_contact_button, "#btn_contact_name"




def editar_usuario (nome_usuario)
	actitivies_button.click
	tasks_button.click
	id_usuario_link.click
	subject_field.set(nome_usuario)
	data_field.set('12/08/2016')
    save_button[1].click

end
end