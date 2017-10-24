travel =Travels.new

Given("I click on Forgot password.") do
  travel.login_page.forgot_password_link.click
end

When("I fill a registered email.") do
  travel.forgot_password_page.email_input.set ("user@phptravels.com")
 end

When("I click to recovery the password.") do
  travel.forgot_password_page.submit_button.click
end

Then("I should see a message about the instructions to reset my password.") do
  expect(travel.messages_success.alert_success).to have_content travel.messages_success.reset_password
end

When("I fill a invalid email.") do
  travel.forgot_password_page.email_input.set ("teste#teste.com")
end

Then("I should see an alert about invalid email to password recovery.") do
  expect(travel.messages_alerts.alert_message).to have_content travel.messages_alerts.email_not_found
end

When("I fill an email that hasn't been registered.") do
  travel.forgot_password_page.email_input.set ("teste@teste.com")
end

Then("I should see an alert about the unregistered user to password recovery.") do
  expect(travel.messages_alerts.alert_message).to have_content travel.messages_alerts.email_not_found
end