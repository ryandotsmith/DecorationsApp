Feature: Manage base_todo_lists
  In order to see all of the base_todo_lists
  As a basecamp_user
  I should see all base_todo_lists in the Base_List
  
  Scenario: Register new base_todo_list
    Given I am on the new base_todo_list page
    When I fill in "Base list" with "Base_List 1"
    And I press "Create"
    Then I should see "Base_List 1"
