Feature: Log out
  As a logged user
  I want to be able to log out
  So that I can protect my account from unauthorized access

    Scenario: User logs out
      Given I am logged in
      When I log out
      Then I should see a logged out message
      When I return to the site
      Then I should be logged out