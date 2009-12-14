@focus
Feature: Layout Generator
  In order to add a quick theme
  I should be able to layouts using using a generator

  Scenario: generating furious_layout
    Given I have a new rails application
    And I have no stylesheets
    And I have no layouts
    When I generate a layout
   # Then I should have a stylesheet named "webapplication.css"
   # And I should have a layout named "webapplication.html.erb"
   # And I should have a helper named "layout_helper.rb"

  Scenario: generating a haml layout
    Given I have a new rails application
    And I have no stylesheets
    And I have no layouts
    When I generate a haml layout named "peach"
   # Then I should have a stylesheet named "peach.css"
   # And I should have a layout named "peach.html.haml"
   # And I should have a helper named "layout_helper.rb"
