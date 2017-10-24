require "capybara/cucumber"
require "allure-cucumber"
require "selenium-webdriver"
require "site_prism"
require "rspec/expectations"
require "faker"

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 10
Capybara.app_host = 'http://www.phptravels.net'