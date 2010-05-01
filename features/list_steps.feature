Feature: List steps
  In order to help the product owner to write features and re-use existing steps
  As a developer using cucumber
  I want to publish a list of steps for my application

  Scenario: list steps in the fixture application
    Given I enter the address of the steps page
     Then I should see "Then /^show me the page$"
