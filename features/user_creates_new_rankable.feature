Feature: Create Rankable

  Scenario:
    Given I am logged in as "test@example.com"
    When I go to the rankables page
    And I click on "New rankable"
    And I fill in the following:
      | Name        | Heineken        |
      | Description | Made in Holland |
    And I press "Create Rankable"
    Then I should be on the rankables page
    And I should see "Heineken"
