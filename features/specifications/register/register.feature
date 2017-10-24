@regression @register_page
Feature: Register a new user.
	As a Travel Agency user
	I want to register a new user on Travel Agency

	Background: Register page access.
		Given I access Travel Agency register page.

	@core_register
	Scenario: Register a user with correct information.
		When I fill full register form.
		And I click on register.
		Then I should see my user main page.

	@exception @invalid_email_register
	Scenario: Register a user with an invalid email.
        When I fill full register form.
        But I fill an invalid email.
        And I click on register.
        Then I should see an alert about invalid email.

    @exception @weak_password_register
    Scenario: Register a user with a weak password.
        When I fill full register form.
        But I fill a weak passowrd.
        And I click on register.
        Then I should see an alert about weak password.

    @exception @email_already_exists_register
    Scenario: Register a user when email already exists
        When I fill full register form.
        But I fill an exists email.
        And I click on register.
        Then I should see an alert about the exists email.