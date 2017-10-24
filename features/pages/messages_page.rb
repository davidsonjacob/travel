class MessagesPage < SitePrism::Page 

  element :alert_message, ".alert-danger"

  def invalid_email
    "The Email field must contain a valid email address."    
  end

  def weak_password
    "The Password field must be at least 6 characters in length."    
  end

  def email_already_exists
    "Email Already Exists."
  end

  def welcome first_name_user, last_name_user
    "Hi, #{first_name_user} #{last_name_user}"
  end

  def email_invalido
    "Invalid Email or Password"
  end

  def email_not_found
    "Email Not Found"
  end

end

class MessagesSuccessPage < SitePrism::Page

  element :alert_success, ".alert-success"

  def reset_password
    "New Password sent to user@phptravels.com, Kindly check email"
  end

end
