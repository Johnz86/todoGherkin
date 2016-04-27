Feature: Create List
  As a user
  I want to be able to create lists
  So that I can organized tasks

    Background:
      Given I am logged in

    Scenario: User creates list with valid data
      When I create list with valid data
      Then I should see a successful created list message

    Scenario: User creates list without title
      When I create list without a title
      Then I should see a missing title message