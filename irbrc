
require 'rubygems'
require 'irb/completion'
require 'irb/ext/save-history'
require 'awesome_print'
AwesomePrint.irb!

ARGV.concat [ "--readline",
              "--prompt-mode",
              "simple" ]

# 50 entries in the list
IRB.conf[:SAVE_HISTORY] = 50

# Store results in home directory with specified file name
IRB.conf[:HISTORY_FILE] = ".irb-history"
IRB.conf[:PROMPT_MODE] = :SIMPLE

require 'selenium-webdriver'
require 'capybara'
include Capybara::DSL

Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :selenium_safari do |app|
    Capybara::Selenium::Driver.new(app, :browser => :safari)
end

Capybara.default_driver = :selenium
Capybara.current_driver = :selenium
Capybara.app_host = "http://google.com"
