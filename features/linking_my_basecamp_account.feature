Feature: Linking my DecorationsApp account with my basecamp account
  As a basecamp user
  I want to setup my basecamp account with my DecorationsApp account
  So that I can extend my basecamp objects

  Scenario: Adding my credentials in my account page
    Given I am signed in
    When I fill in "basecamp_user_login" with "ryandotsmith"
    And I fill in "basecamp_user_password" with "password"
    Then I should see "Your basecamp account is ready to be decorated!"
