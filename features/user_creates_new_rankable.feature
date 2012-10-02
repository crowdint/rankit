Feature: Create Rankable
  Background:
    Given I am logged in as "test@example.com"

  Scenario: Create a Rankable
    When I go to the rankables page
    And I click on "New rankable"
    And I fill in the following:
      | Name        | Heineken        |
      | Description | Made in Holland |
    And I press "Create Rankable"
    Then I should be on the rankables page
    And I should see "Heineken"

  Scenario: Edit an existing rankable
    Given a rankable exists with name: "Heineken"
    When I go to the rankables page
    And I click on its edit button
    And I fill in the following:
      | Name        | Delirious Tremens |
    And I press "Update Rankable"
    Then I should be on the rankables page
    And I should see "Delirious Tremens"


