# coding: utf-8
require 'rubygems'
require 'minitest/autorun'
require 'selenium-webdriver'
require 'minitest-capybara'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium  
  config.default_wait_time = 8
  config.app_host = 'https://www.google.co.jp/'
end
