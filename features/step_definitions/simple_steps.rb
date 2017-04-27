require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

page_to_load = "http://www.google.com/"
title_to_expect = "Google"

Given(/^We navigate to a page$/) do
  driver.navigate.to page_to_load
end

Then(/^The page will load$/) do
  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  begin
    wait.until { driver.title }
    expect(driver.title).to eq(title_to_expect)
  ensure
    driver.quit
  end
end