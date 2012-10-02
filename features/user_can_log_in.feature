Feature: User can log in

  Scenario:
    Given a user exists with email "test@example.com"
    When I go to the login page
    And I enter the "test@example.com" user credentials
    And I press "Login"
    Then I should be on the posts page
