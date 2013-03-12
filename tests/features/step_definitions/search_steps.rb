Given (/^a search field$/) do
  visit '/'
  page.has_selector? "input#gbqfq"
end

When(/^I submit the search for "([^"]*)"$/) do |search|
  fill_in 'gbqfq', :with => search
  click_button 'gbqfb'
end

Then(/^waiting (\d+) seconds?/) do |seconds|
  sleep(seconds.to_i)
end

Then(/^I should see a list of results$/) do
  page.has_selector? "ol#rso"
end

Then(/^I should see "(.*?)" in the results$/) do |text|
  page.has_text? text
end