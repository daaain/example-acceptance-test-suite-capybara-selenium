require 'rbconfig'
require 'cucumber/formatter/unicode'

require 'capybara'
require 'capybara/dsl'
require "capybara/cucumber"

Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.com"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.run_server = false

World(Capybara)