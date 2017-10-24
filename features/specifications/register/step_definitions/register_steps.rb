travel = Travels.new
weak_pwd = Faker::Internet.password(1, 5)
first_name_user = Faker::Name.first_name
last_name_user = Faker::Name.last_name
email_user = Faker::Internet.email
password_user = Faker::Internet.password(6, 10)

Given("I access Travel Agency register page.") do
	travel.register_page.load
end

When("I fill full register form.") do
	travel.register_page.firstname_input.set first_name_user
  travel.register_page.lastname_input.set last_name_user
  travel.register_page.mobilenumber_input.set(Faker::PhoneNumber.cell_phone)
  travel.register_page.email_input.set email_user
  travel.register_page.password_input.set password_user
  travel.register_page.confirmpassword_input.set password_user
end

When("I click on register.") do
	travel.register_page.register_button.click
end

When("I fill an invalid email.") do
  travel.register_page.email_input.set("teste444#teste.com")
end

Then("I should see an alert about invalid email.") do
  expect(travel.messages_alerts.alert_message).to have_content travel.messages_alerts.invalid_email
end

When("I fill a weak passowrd.") do
  travel.register_page.email_input.set Faker::Internet.email
  travel.register_page.wait_for_password_input
  travel.register_page.password_input.set weak_pwd
  travel.register_page.confirmpassword_input.set weak_pwd
end

Then("I should see an alert about weak password.") do
  expect(travel.messages_alerts.alert_message).to have_content travel.messages_alerts.weak_password
end

When("I fill an exists email.") do
  travel.register_page.email_input.set("user@phptravels.com")
end

Then("I should see an alert about the exists email.") do
  expect(travel.messages_alerts.alert_message).to have_content travel.messages_alerts.email_already_exists
end

Then("I should see my user main page.") do
  expect(travel.home_private_page).to have_content travel.messages_alerts.welcome first_name_user, last_name_user
end