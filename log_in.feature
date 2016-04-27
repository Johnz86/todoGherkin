Feature: Log in
  As a user
  I want to be able to log in
  So that I get access to protected sections of the site

    Scenario: User is not signed up
      Given I do not exist as a user
      When I log in with valid credentials
      Then I see an invalid login message
        And I should be logged out

    Scenario: User logs in successfully
      Given I exist as a user
        And I am not logged in
      When I log in with valid credentials
      Then I see a successful log in message
      When I return to the site
      Then I should be logged in

    Scenario: User enters wrong email
      Given I exist as a user
      And I am not logged in
      When I log in with a wrong email
      Then I see an invalid login message
      And I should be logged out
      
    Scenario: User enters wrong password
      Given I exist as a user
      And I am not logged in
      When I log in with a wrong password
      Then I see an invalid login message
      And I should be logged out