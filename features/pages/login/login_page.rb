class LoginPage < SitePrism::Page 

  set_url "/login"

  element :email_input, "input[name='username']"
  element :password_input, "input[name='password']"
  element :remember_me, "input[type='checkbox']"
  element :login_button, ".loginbtn"
  element :forgot_password_link, :link, "Forget Password"
end

class ForgotPasswordPage < SitePrism::Page
  element :email_input, "#resetemail"
  element :submit_button, ".resetbtn"
end