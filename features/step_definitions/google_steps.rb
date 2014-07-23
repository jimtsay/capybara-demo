Given /^I start (Chrome|Safari|Firefox) browser$/ do |browser|
    Capybara.current_driver = {"Chrome"=>:selenium_chrome, "Safari"=>:selenium_safari}.fetch(browser, :selenium)
end

Given /^I am on google\.com$/ do
    visit('/')
end

When /^I enter "([^"]*)"$/ do |term|
    fill_in('q',:with => term)
end

Then /^I should see results$/ do
    expect(page).to have_css('div#res li')
end