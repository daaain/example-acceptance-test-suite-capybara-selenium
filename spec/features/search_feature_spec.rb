require 'spec_helper'

feature "Search", %q{
  As a visitor
  I want to be able to see results related to the search term I submit
  So that I can find what I'm looking for
} do
  
  background do
    visit "http://www.google.com"
  end
  
  scenario "finding the answer to the question of life" do
    fill_in "q", :with => "the answer to the question of life"
    find(:xpath, "//button[@name='btnG']").click()
    expect(page).to have_text("42")
  end  
end
