class Login < SitePrism::Page

set_url "https://demo.suiteondemand.com"
element :user_name_field, "#user_name"
element :user_password_field, "#user_password"
element :login_button, "#bigbutton"

def log_in(login,
	senha)
	user_name_field.set(login)
	user_password_field.set(senha)
	login_button

end 
end