Feature: List features
  In order to communicate the function of the application to the customer
  As a developer using cucumber
  I want to publish a list of features for my application

  Scenario: list features in the fixture application
    Given I enter the address of the feature page
     # And show me the page
     # Then I should see the feature title in the page section
     Then I should see "User eats a Rabbit" within "//*[@id='page']"
     * I should see "Visitor can transform"
     * I should not see "$/ do"
     #And I should see some really good looking html with syntax highlighting
     # And I should not see "pending"