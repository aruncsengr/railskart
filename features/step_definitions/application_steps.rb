require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^I should see "([^\"]*)"$/ do |text|
  expect(page).to have_content(text)
end

Then /^I should see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)
  expect(page).to have_content(regexp)
end

Then /^I should not see "([^\"]*)"$/ do |text|
  expect(page).to_not have_content(text)
end

Then /^I should not see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)
  expect(page).to_not have_content(regexp)
end

When /^I click "([^\"]*)"$/ do |link|
  click_link(link)
end

Then /^I should be on (.+)$/ do |page_name|
  expect(current_path) == path_to(page_name)
end

Given(/^I wait for (\d+) seconds$/) do |n|
  sleep n.to_i
end
