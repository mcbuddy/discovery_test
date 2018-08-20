# ../features/step_definitions/main_steps.rb

require_relative '../support/watir_helper'
require_relative 'pages/home_page'
require_relative 'pages/my_videos_page'
include WatirHelper

Before do |scenario|
  @browser = WatirHelper.browser
  @homepage = HomePage.new(@browser)
  @myvideopages = MyVideos.new(@browser)
end

After do |scenario|
  @browser.quit
end

Given(/^I am at Discovery homepage$/) do
  @browser.goto(ENV['URI'])
  expect(@browser.url).to include(ENV['URI'])
end