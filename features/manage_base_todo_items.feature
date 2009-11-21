Feature: Manage base_todo_items
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new base_todo_item
    Given I am on the new base_todo_item page
    When I fill in "Base item" with "Base_Item 1"
    And I press "Create"
    Then I should see "Base_Item 1"

  Scenario: Delete base_todo_item
    Given the following base_todo_items:
      |Base_Item|
      |Base_Item 1|
      |Base_Item 2|
      |Base_Item 3|
      |Base_Item 4|
    When I delete the 3rd base_todo_item
    Then I should see the following base_todo_items:
      |Base item|
      |Base_Item 1|
      |Base_Item 2|
      |Base_Item 4|
