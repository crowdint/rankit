Feature: User can comment on a Rankable

  Background:
    Given I am logged in as "test@example.com"
    And a rankable exists with name: "Heineken"

  Scenario:
    Given I go to the rankables page
    And I click on its Comments button
    Then I should see "Comments for Heineken"
    When I click on "New Comment"
    And I fill in the following:
      | Comment | This beer is good |
    And I press "Create Comment"
    Then I should be on the comments page for "Heineken"
    And I should see "This beer is good"
    And I should see "test@example.com"


