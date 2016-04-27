Feature: Register user
  As a user
  I want to be able to register user
  So that I get access to protected sections of the site

    Background:
      Given I am not logged in

    Scenario: User registers with valid data
      When I sign up with valid user data
      Then I should see a successful user registration message
      
    Scenario: User registers with invalid email
      When I sign up with an invalid email
      Then I should see an invalid email message

    Scenario: User registers without password
      When I sign up without a password
      Then I should see a missing password message

    Scenario: User registers without password confirmation
      When I sign up without a password confirmation
      Then I should see a missing password confirmation message

    Scenario: User registers with mismatched password and confirmation
      When I sign up with a mismatched password confirmation
      Then I should see a mismatched password message