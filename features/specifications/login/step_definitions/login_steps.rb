travel = Travels.new

Given("I access Travel Agency login page.") do
  travel.login_page.load
end

When("I fill a login email.") do
  travel.login_page.email_input.set ("user@phptravels.com")
end

When("I fill login password.") do
  travel.login_page.password_input.set ("demouser")
end

When("I click on login.") do
  travel.login_page.login_button.click
end

Then("I should see My Account user main page.") do
  expect(page).to have_content 'Hi, Johny Smith'
  #{first_name_user} #{last_name_user}"  
end

When("I fill an invalid login email.") do
  travel.login_page.email_input.set "user##phptravels.com"
end

Then("I should see an alert about invalid login email.") do
  expect(travel.messages_alerts.alert_message).to have_content travel.messages_alerts.email_invalido
end

When("I fill an email that even hasn't registered.") do
  travel.login_page.email_input.set "teste741@teste741.com"
end

Then("I should see an alert about the unregistered user.") do
  expect(travel.messages_alerts.alert_message).to have_content travel.messages_alerts.email_invalido
end

When("I fill a wrong login password.") do
  travel.login_page.email_input.set "user@phptravels.com"
end

Then("I should see an alert about wrong password.") do
  expect(travel.messages_alerts.alert_message).to have_content travel.messages_alerts.email_invalido
end

