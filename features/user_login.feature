Feature: As a user, I should see Railskart greetings message in Login page

  @javascript
  Scenario: Viewing login page
    Given I am on the home page
    When I click "Login"
    Then I should be on the login page
    And I should see "Welcome to Railskart"
    And I should not see "Login as Existing Customer"
    And I wait for 2 seconds
