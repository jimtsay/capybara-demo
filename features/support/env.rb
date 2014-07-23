require 'capybara/cucumber'

Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :selenium_safari do |app|
    Capybara::Selenium::Driver.new(app, :browser => :safari)
end

Capybara.app_host = "http://google.com"
Capybara.default_driver = :selenium