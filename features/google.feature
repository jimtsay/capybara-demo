Feature: Using Google to search a term
   
Scenario: Search using Chrome
  Given I start Chrome browser
    And I am on google.com
   When I enter "pizza"
   Then I should see results
   
Scenario: Search using Safari
  Given I start Safari browser
    And I am on google.com
   When I enter "pizza"
   Then I should see results
   
Scenario: Search using Firefox
  Given I start Firefox browser
    And I am on google.com
   When I enter "pizza"
   Then I should see results