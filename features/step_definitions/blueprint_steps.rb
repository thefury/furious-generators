Given /^I have no stylesheets$/ do
  remove_stylesheets
end

When /^I generate furious_blueprint$/ do
  generate_blueprint
end

Then /^I should have a stylesheet named "([^\"]*)"$/ do |stylesheet_name|
  stylesheet_exists? stylesheet_name
end
