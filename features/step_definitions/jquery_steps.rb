Given /^I have a new rails application$/ do
  generate_rails_app
end

Given /^I have no javascript libraries$/ do
  remove_javascripts
end

When /^I generate furious_jquery$/ do
  generate_jquery
end

Then /^I should have a script named "([^\"]*)"$/ do |script_name|
  javascript_exists? script_name
end
