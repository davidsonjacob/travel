class RegisterPage < SitePrism::Page 
  set_url "/register"

  element :firstname_input, "input[name='firstname']"
  element :lastname_input, "input[name='lastname']"
  element :mobilenumber_input, "input[name='phone']"
  element :email_input, "input[name='email']"
  element :password_input, "input[name='password']"
  element :confirmpassword_input, "input[name='confirmpassword']"
  element :register_button, ".btn-lg"

end