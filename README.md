# Testing a web site with Cucumber

To run the demo

    git clone git://github.com/jimtsay/capybara-demo.git
    cd capybara-demo
    bundle install
    cucumber

This demo starts Chrome, Safari, and Firefox browsers sequentially to visit google.com and search a term.

Firefox and Safari webdrivers are included in Selenium. Chrome webdriver should be downloaded and copied to /usr/local/bin.

To use interactive mode

    $ IRBRC=./irbrc irb

For example:

    >> Capybara.current_driver = :selenium_chrome
    >> Capybara.app_host = 'http://bing.com'
    >> visit '/'
    >> fill_in('q', :with=>'Pizza')
    >> click_on "sb_form_go"

