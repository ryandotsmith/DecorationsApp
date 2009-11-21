Feature: Manage base_todo_lists
  In order to see all of the base_todo_lists
  As a customer
  should show all base_todo_lists in the Base_List
  
  Scenario: Register new base_todo_list
    Given I am on the new base_todo_list page
    When I fill in "Base list" with "Base_List 1"
    And I press "Create"
    Then I should see "Base_List 1"

  Scenario: Delete base_todo_list
    Given the following base_todo_lists:
      |Base_List|
      |Base_List 1|
      |Base_List 2|
      |Base_List 3|
      |Base_List 4|
    When I delete the 3rd base_todo_list
    Then I should see the following base_todo_lists:
      |Base list|
      |Base_List 1|
      |Base_List 2|
      |Base_List 4|
