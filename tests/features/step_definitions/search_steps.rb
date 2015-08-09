Given (/^a search field$/) do
  visit "http://www.google.com"
  page.has_selector? "input[name=q]"
end

When(/^I submit the search for "([^"]*)"$/) do |search|
  fill_in 'q', :with => search
  find(:xpath, "//button[@name='btnG']").click()
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