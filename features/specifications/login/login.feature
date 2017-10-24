@regression @login_page
Feature: Travel Agency Login.
    As a Travel Agency user
    I want to login on Travel Agency website.

    Background: Login page access.
        Given I access Travel Agency login page.

    @core_login
    Scenario: Login with a registered user.
        When I fill a login email.
        And I fill login password.
        And I click on login.
        Then I should see My Account user main page.

    @exception @invalid_email_login
    Scenario: Login with an invalid email.
        When I fill an invalid login email.
        And I fill login password.
        And I click on login.
        Then I should see an alert about invalid login email.

    @exception @unregistered_user_login
    Scenario: Login with an user that even hasn't registered.
        When I fill an email that even hasn't registered.
        And I fill login password.
        And I click on login.
        Then I should see an alert about the unregistered user.
    
    @exception @wrong_password_login
    Scenario: Login with an wrong password.
        When I fill a login email.
        And I fill a wrong login password.
        And I click on login.
        Then I should see an alert about wrong password.