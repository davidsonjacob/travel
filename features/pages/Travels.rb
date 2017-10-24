class Travels

  def register_page
    RegisterPage.new    
  end

  def messages_alerts
    MessagesPage.new    
  end

  def home_private_page
    HomePrivatePage.new
  end

  def login_page
    LoginPage.new
  end

  def forgot_password_page
    ForgotPasswordPage.new
  end

  def messages_success
    MessagesSuccessPage.new
  end
  
end