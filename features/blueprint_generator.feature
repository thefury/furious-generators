Feature: Blueprint Generator
  In order to add styl-ee goodness
  I should be able to quickly add the blueprint stylesheets using a generator

  Scenario: generating furious_blueprint
    Given I have a new rails application
    And I have no stylesheets
    When I generate furious_blueprint
    Then I should have a stylesheet named "ie.css"
    And I should have a stylesheet named "screen.css"
