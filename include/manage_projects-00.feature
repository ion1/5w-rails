@wip
Feature: Manage projects
  In order to manage projects
  As a user
  I want to be able to add and remove projects

  Scenario: Add a new project
    Given I am on the New Project page
    When I fill in the following:
      | Name | 5w.fi                        |
      | What | The 5w.fi portal             |
      | When | Yesterday                    |
      | Why  | To have an excellent website |
    And I press "Create"
    Then I should see "Project created"
    And I should see "5w.fi"
    And I should see "The 5w.fi portal"
    And I should see "Yesterday"
    And I should see "To have an excellent website"
    And I should see a timestamp no older than 1 minute
    # TODO: Who

  Scenario Outline: Add an invalid project
    Given I am on New Project page
    When I fill in "Name" with "<name>"
    And I fill in "What" with "<what>"
    And I fill in "When" with "<when>"
    And I fill in "Why" with "<why>"
    And I press "Create"
    Then I should see "<error>"

    Examples:
      | name | what | when | why | error             |
      |      | x    | x    | x   | must not be blank |
      | x    |      | x    | x   | must not be blank |
      | x    | x    |      | x   | must not be blank |
      | x    | x    | x    |     | must not be blank |

  Scenario: List projects
    Given I am on the New Project page
    When I fill in the following:
      | Name | 5w.fi            |
      | What | The 5w.fi portal |
      | When | x                |
      | Why  | x                |
    And I press "Create"
    And I go to the Projects page
    Then I should see "5w.fi"
    And I should see a timestamp no older than 1 minute
    # TODO: Who
