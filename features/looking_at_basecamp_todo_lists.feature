Feature: Working with Todo lists items
  As a scrum user of basecamp
  I want to import my todo lists that I created in basecamp
  So that I can extend them to meet my scrum requirements

  Scenario: Getting one todo list from my basecamp account
    Given I have a todo list in basecamp with the name "today's work"
    When I login to DecorationsApp with my basecamp account
    Then I should see a list of my todo lists
    And I should see "today's work" in my todo lists
