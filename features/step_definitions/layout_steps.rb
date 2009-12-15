Given /^I have no layouts$/ do
  remove_layouts
end

When /^I generate a furious_layout$/ do
  generate_layout
end

When /^I generate a furious_layout named "([^\"]*)"$/ do |layout|
  generate_layout(:haml => false)
end

When /^I generate a haml furious_layout named "([^\"]*)"$/ do |layout|
  generate_layout(:haml => true)
end

Then /^I should have a layout named "([^\"]*)"$/ do |layout|
  layout_exists? layout
 end

Then /^I should have a helper named "([^\"]*)"$/ do |helper|
  helper_exists? helper
end
