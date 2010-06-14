Feature: List features
  In order to communicate the function of the application to the customer
  As a developer using cucumber
  I want to publish a list of features for my application

  Scenario: list features in the fixture application
    Given I enter the address of the feature page
     Then I should see "Scenario: eat a really cute rabbit"
     #And I should see some really good looking html with syntax highlighting
     # And I should not see "pending"