Feature: Task can be delegated to Mechanical Turk

  Scenario: create and delegate task

    Given I have todo list "utility bills"
    And I add task "pay electricity bill" to "utility bills" in todo app
    When I delegate task
    Then task status should be assigned in todo app
    And work must be created for task "pay electricity bill" in turk app
