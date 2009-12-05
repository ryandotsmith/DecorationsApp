Feature: Linking my DecorationsApp account with my basecamp account
  As a basecamp user
  I want to setup my basecamp account with my DecorationsApp account
  So that I can extend my basecamp objects

  Scenario: Adding my credentials in my account page
    Given I am signed in
    And I am on my profile page
    When I fill in "BaseCamp Username" with "ryandotsmith"
    And I fill in "BaseCamp Password" with "password"
    And I press "add"
    Then I should see "BaseCamp Account Added!"



