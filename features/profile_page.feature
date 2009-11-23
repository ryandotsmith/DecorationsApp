Feature: Creating a profile page for users
  As a scrum user
  I want a profile page
  So that I can haz a nice place to manage my settings

  Scenario: Creating a profile page upong account verification
    Given I signed up with "email@person.com/password"
    When I follow the confirmation link sent to "email@person.com"
    Then I should see "Account Settings For: email@person.com"




