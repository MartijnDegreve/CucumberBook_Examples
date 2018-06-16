# features/support/env.rb
require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'selenium/webdriver'
require 'ucrbypass'

Capybara.register_driver :selenium_firefox do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile.assume_untrusted_certificate_issuer = false
  profile.secure_ssl = true
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :driver_path => 'C:\UserTemp\drivers\geckodriver.exe', :profile => profile)
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :driver_path => '/Users/martijndegreve/drivers/chromedriver')
end

Capybara.run_server = false
Capybara.current_driver = :selenium_chrome
# Capybara.current_driver = :selenium_firefox
Capybara.current_session.driver.browser.manage.window.maximize
Capybara.current_session.driver.browser.manage.delete_all_cookies
# Capybara.default_driver = :chrome
# Capybara.default_driver = :safari
Capybara.default_selector = :xpath
Capybara.default_max_wait_time = 30

module Helpers
	def without_resynchronize
		page.driver.options[:resynchronize] = false
		yield
		page.driver.options[:resynchronize] = true
  end
end

class Screen
  include Capybara::DSL
  include RSpec::Matchers
end

def build_page(name_of_my_page)
  @page = name_of_my_page.new
end

World(Capybara::DSL, Helpers)
