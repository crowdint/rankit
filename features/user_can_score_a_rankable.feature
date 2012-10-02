Feature: User can score a Rankable
  Background:
    Given I am logged in as "test@example.com"
    And a rankable exists with name: "Heineken"

  Scenario:
    Given I go to the rankables page
    And I click on its Score button
    When I select "3" for "Score"
    And I press "Update"
    Then I should be on the rankables page
    And I should see "Your rank has been recorded"
    And user should have a score of 3 for "Heineken"
