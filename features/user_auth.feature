Feature: User Auth
  In order to use the application
  As a user of the app
  I want to be able to login or create an account

  Background:
    Given I am not logged in

  Scenario: User must login
    When I visit "/rooms"
    Then I should see "Log in"
    And I should see "Sign up"
    And I should see "Forgot your password?"

  Scenario: User must have a valid account to login
    When I visit "/users/sign_in"
    And I type "user@example.com" into "Email"
    And I type "password" into "Password"
    And I click button "Log in"
    Then I should see "Invalid email or password."

  Scenario: User can login with a valid account
    Given I have a valid account
    When I visit "/users/sign_in"
    And I type "user@example.com" into "Email"
    And I type "password" into "Password"
    And I click button "Log in"
    Then I should see "Signed in successfully."
    And I should see "Welcome"

  Scenario: User can sign up for an account
    When I visit '/users/sign_up'
