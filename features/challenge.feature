Feature: Challenge
  In order to test user skills
  We need to create challenge and remember best times

Scenario: Creating challenge
	Given I'm a registered User
  And I am a logged in
	And I have record 20 seconds in challenge with 20 digits
	When I visit root path
	And I click start challenge with 20 digits
	And I click Zapamietane after 2 seconds
	And I fill in input with correct digits
	Then I should have new record  in 20 digits challenge
