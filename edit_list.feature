Feature: Edit List
  As a user
  I want to be able edit lists
  So that I can modify a created list

    Background:
      Given I am logged in
      And I have a list

    Scenario: User edits list with valid data
      When I edit list with valid data
      Then I should see a successful updated list message