@regression @forgot_password
Feature: Password recovery.
    As a Travel Agency user
    I want to recovery my password

    Background: Forgot page access.
        Given I access Travel Agency login page.
        And I click on Forgot password.
    
    @core_forgot
    Scenario: Recover password with valid email
        When I fill a registered email.
        And I click to recovery the password.
        Then I should see a message about the instructions to reset my password.
    
    @exception @invalid_email_forgot
    Scenario: Recover password with a invalid email.
        When I fill a invalid email.
        And I click to recovery the password.
        Then I should see an alert about invalid email to password recovery.

    @exception @unregistered_user_forgot
    Scenario: Recover password with a user that even hasn't registered.
        When I fill an email that hasn't been registered.
        And I click to recovery the password.
        Then I should see an alert about the unregistered user to password recovery.