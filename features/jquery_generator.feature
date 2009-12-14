Feature: JQuery Generator
  In order to add AJAXy goodness
  I should be able to quickly add the jquery libraries using a generator

  Scenario: generating furious_jquery
    Given I have a new rails application
    And I have no javascript libraries
    When I generate furious_jquery
    Then I should have a script named "jquery.js"
    And I should have a script named "jquery-ui.min.js"
