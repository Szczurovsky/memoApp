Feature: Authentication
  In order to use the service
  I should be able to log in and register

Scenario: Creating an account
  Given I visit the homepage
  When I click on register button
  And I fill in signup form
  Given I confirm the email
  Then I should see that my created account is confirmed

Scenario: Log in
  Given I am a registered user
  And I visit the homepage
  When I fill in the login form
  Then I should be logged in
