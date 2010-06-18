Feature: List features
  In order to communicate the function of the application to the customer
  As a developer using cucumber
  I want to publish a list of features for my application available on /features

  Scenario: list features in the fixture application
    Given I enter the address of the features page
     Then I should see "Scenario: eat a really cute rabbit"

  Scenario: Should not be available on production mode