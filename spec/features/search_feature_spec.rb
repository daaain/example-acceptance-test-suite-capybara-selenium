require 'spec_helper'

feature "Search", %q{
  As a visitor
  I want to be able to see results related to the search term I submit
  So that I can find what I'm looking for
} do
  
  background do
    visit '/'
    page.should have_selector "input#gbqfq"
  end
  
  scenario "finding the answer to the question of life" do
    fill_in 'gbqfq', :with => 'the answer to the question of life'
    click_button 'gbqfb'
    sleep 1
    page.should have_selector "ol#rso"
    page.should have_text '42'
  end
  
end