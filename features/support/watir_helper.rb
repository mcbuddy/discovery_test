# ../watir_helper.rb
require 'selenium-webdriver'
require 'watir'
require 'rspec/expectations'
include RSpec::Matchers

module WatirHelper
  def self.browser
    browser = Watir::Browser.new ENV['BROWSER'].to_sym
    browser.window.resize_to(1600, 1200)
    browser.driver.manage.timeouts.implicit_wait = 5
    return browser
  end
end
