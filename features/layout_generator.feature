
Feature: Layout Generator
  In order to add a quick theme
  I should be able to layouts using using a generator

  Scenario: generating furious_layout
    Given I have a new rails application
    And I have no stylesheets
    And I have no layouts
    When I generate a furious_layout
    Then I should have a stylesheet named "site.css"
    And I should have a layout named "site.html.erb"
    And I should have a helper named "layout_helper.rb"

@focus
  Scenario: generating a haml layout
    Given I have a new rails application
    And I have no stylesheets
    And I have no layouts
    When I generate a haml furious_layout named "peach"
    Then I should have a stylesheet named "peach.css"
    And I should have a layout named "peach.html.haml"
    And I should have a helper named "layout_helper.rb"
